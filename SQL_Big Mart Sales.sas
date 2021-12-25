/* Select first 15 rows */
proc sql outobs=15;
	select * from work.BIGMARTSALES1;
quit;

/* Item_Identifier Initial Exploration */
PROC SQL;
SELECT count(DISTINCT Item_Identifier) as Item_Identifier_Unique
FROM WORK.BIGMARTSALES;
RUN;
QUIT;

PROC SQL;
SELECT DISTINCT Item_Identifier
FROM WORK.BIGMARTSALES;
RUN;
QUIT;

/* 1. Data Cleaning (Item_Fat_Content) */
DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Item_Fat_Content = "LF" THEN Item_Fat_Content = "Low Fat";
ELSE IF Item_Fat_Content = "low fat" THEN Item_Fat_Content = "Low Fat";
ELSE IF Item_Fat_Content = "reg" THEN Item_Fat_Content = "Regular";
RUN;
QUIT;

/* 2. Missing data (Outlet_Size & Item_Weight)
/* 2.1 Outlet_Size analysis */
PROC SQL;
SELECT DISTINCT Outlet_Type, Outlet_Size, count(Item_Identifier) as Total
FROM WORK.BIGMARTSALES
GROUP BY Outlet_Size, Outlet_Type
ORDER BY Outlet_Size DESC;
RUN;
QUIT;

PROC SQL;
SELECT DISTINCT Outlet_Size, count(Item_Identifier) as Total
FROM WORK.BIGMARTSALES
GROUP BY Outlet_Size
ORDER BY Outlet_Size DESC;
RUN;
QUIT;

PROC SQL;
SELECT DISTINCT Outlet_Identifier, Outlet_Size, count(*) as cnt
FROM WORK.BIGMARTSALES
GROUP BY Outlet_Size, Outlet_Identifier
ORDER BY Outlet_Identifier ASC;
RUN;
QUIT;

/* Outlet_Size imputation based on previous value */
PROC SQL;
UPDATE WORK.BIGMARTSALES
SET Outlet_Size="Small"
WHERE Outlet_Identifier="OUT010" OR Outlet_Identifier="OUT017" OR Outlet_Identifier="OUT045";
QUIT;


/* 2.2 Item_Weight analysis */
PROC SQL;
SELECT DISTINCT Item_Identifier, Item_Weight
FROM WORK.BIGMARTSALES
GROUP BY Item_Identifier, Item_Weight
ORDER BY Item_Identifier ASC;
RUN;
QUIT;

/* Step 1 (replacing missing values with previous values based on Item_Identifier)*/
PROC SORT DATA=WORK.BIGMARTSALES EQUALS;
	BY Item_Identifier;
RUN;

PROC STDIZE DATA=WORK.BIGMARTSALES
OUT=WORK.BIGMARTSALES
REPONLY METHOD=median;
BY Item_Identifier;
RUN;

/* Step 2 (for the remaining missing values)*/
PROC STDIZE DATA=WORK.BIGMARTSALES
	OUT=WORK.BIGMARTSALES
	REPONLY METHOD=mean;
RUN;

/* 3. Outlier Treatment */
/* Outlier Treatment with Log */
DATA WORK.BIGMARTSALES;
	SET WORK.BIGMARTSALES;
	log_Item_Visibility=log(Item_Visibility);
	log_Item_Outlet_Sales=log(Item_Outlet_Sales);
RUN;

/* Outlier Treatment with SQRT */
DATA WORK.BIGMARTSALES;
	SET WORK.BIGMARTSALES;
	sqrt_Item_Visibility=sqrt(Item_Visibility);
	sqrt_Item_Outlet_Sales=sqrt(Item_Outlet_Sales);
RUN;
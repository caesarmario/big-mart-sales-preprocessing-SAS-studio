/* Creating Item_Category */
PROC SQL;
ALTER TABLE WORK.BIGMARTSALES ADD Item_Category CHAR (20);
RUN;
QUIT;

PROC SQL;
UPDATE WORK.BIGMARTSALES
SET Item_Category="Drink"
WHERE Item_Identifier LIKE "DR%";
QUIT;

PROC SQL;
UPDATE WORK.BIGMARTSALES
SET Item_Category="Food"
WHERE Item_Identifier LIKE "FD%";
QUIT;

PROC SQL;
UPDATE WORK.BIGMARTSALES
SET Item_Category="Non-Consumable"
WHERE Item_Identifier LIKE "NC%";
QUIT;

/* Creating Age_Outlet */
PROC SQL;
ALTER TABLE WORK.BIGMARTSALES ADD Age_Outlet NUM (5);
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
Age_Outlet = 2021 - Outlet_Establishment_Year;
PUT Age_Outlet=;
RUN;

/* Creating Outlet_Category */
PROC SQL;
ALTER TABLE WORK.BIGMARTSALES ADD Outlet_Category CHAR (20);
RUN;
QUIT;

PROC SQL;
UPDATE WORK.BIGMARTSALES
SET Outlet_Category =
CASE when Age_Outlet >= 0 AND Age_Outlet <= 10 then "New Outlet"
when Age_Outlet >= 11 AND Age_Outlet <= 20 then "Moderate Outlet"
ELSE "Old Outlet"
END;
QUIT;

/* Label Encoding */
/* New Columns for Encoded Columns */
PROC SQL;
ALTER TABLE WORK.BIGMARTSALES
ADD Item_Fat_Content_Encoding INT;
RUN;
QUIT;

/* Item_Fat_Content_Encoding */
DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Item_Fat_Content = "Low Fat" THEN Item_Fat_Content_Encoding ="0";
ELSE IF Item_Fat_Content = "Regular" THEN Item_Fat_Content_Encoding ="1";
RUN;
QUIT;
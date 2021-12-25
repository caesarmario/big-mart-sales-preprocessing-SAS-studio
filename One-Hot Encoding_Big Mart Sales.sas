/* One-Hot Encoding */
/* Item_Category One-Hot Encoding */
PROC SQL;
ALTER TABLE WORK.BIGMARTSALES
ADD Item_Category_GROUP_1 INT
ADD Item_Category_GROUP_2 INT
ADD Item_Category_GROUP_3 INT;
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Item_Category = "Drink" THEN Item_Category_GROUP_1 ="1";
ELSE Item_Category_GROUP_1 ="0";
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Item_Category = "Food" THEN Item_Category_GROUP_2 ="1";
ELSE Item_Category_GROUP_2 ="0";
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Item_Category = "Non-Consumable" THEN Item_Category_GROUP_3 ="1";
ELSE Item_Category_GROUP_3 ="0";
RUN;
QUIT;

/* Outlet_Category One-Hot Encoding */
PROC SQL;
ALTER TABLE WORK.BIGMARTSALES
ADD Outlet_Category_GROUP_1 INT
ADD Outlet_Category_GROUP_2 INT
ADD Outlet_Category_GROUP_3 INT;
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Outlet_Category = "New Outlet" THEN Outlet_Category_GROUP_1 ="1";
ELSE Outlet_Category_GROUP_1 ="0";
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Outlet_Category = "Moderate Outlet" THEN Outlet_Category_GROUP_2 ="1";
ELSE Outlet_Category_GROUP_2 ="0";
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Outlet_Category = "Old Outlet" THEN Outlet_Category_GROUP_3 ="1";
ELSE Outlet_Category_GROUP_3 ="0";
RUN;
QUIT;

/* Outlet_Size One-Hot Encoding*/
PROC SQL;
ALTER TABLE WORK.BIGMARTSALES
ADD Outlet_Size_GROUP_1 INT
ADD Outlet_Size_GROUP_2 INT
ADD Outlet_Size_GROUP_3 INT;
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Outlet_Size = "Small" THEN Outlet_Size_GROUP_1 ="1";
ELSE Outlet_Size_GROUP_1 ="0";
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Outlet_Size = "Medium" THEN Outlet_Size_GROUP_2 ="1";
ELSE Outlet_Size_GROUP_2 ="0";
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Outlet_Size = "High" THEN Outlet_Size_GROUP_3 ="1";
ELSE Outlet_Size_GROUP_3 ="0";
RUN;
QUIT;

/* Outlet_Location_Type One-Hot Encoding */
PROC SQL;
ALTER TABLE WORK.BIGMARTSALES
ADD Outlet_Location_Type_GROUP_1 INT
ADD Outlet_Location_Type_GROUP_2 INT
ADD Outlet_Location_Type_GROUP_3 INT;
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Outlet_Location_Type = "Tier 1" THEN Outlet_Location_Type_GROUP_1 ="1";
ELSE Outlet_Location_Type_GROUP_1 ="0";
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Outlet_Location_Type = "Tier 2" THEN Outlet_Location_Type_GROUP_2 ="1";
ELSE Outlet_Location_Type_GROUP_2 ="0";
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Outlet_Location_Type = "Tier 3" THEN Outlet_Location_Type_GROUP_3 ="1";
ELSE Outlet_Location_Type_GROUP_3 ="0";
RUN;
QUIT;

/* Outlet_Type One-Hot Encoding */
PROC SQL;
ALTER TABLE WORK.BIGMARTSALES
ADD Outlet_Type_GROUP_1 INT
ADD Outlet_Type_GROUP_2 INT
ADD Outlet_Type_GROUP_3 INT
ADD Outlet_Type_GROUP_4 INT;
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Outlet_Type = "Grocery Store" THEN Outlet_Type_GROUP_1 ="1";
ELSE Outlet_Type_GROUP_1 ="0";
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Outlet_Type = "Supermarket Type1" THEN Outlet_Type_GROUP_2 ="1";
ELSE Outlet_Type_GROUP_2 ="0";
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Outlet_Type = "Supermarket Type2" THEN Outlet_Type_GROUP_3 ="1";
ELSE Outlet_Type_GROUP_3 ="0";
RUN;
QUIT;

DATA WORK.BIGMARTSALES;
SET WORK.BIGMARTSALES;
IF Outlet_Type = "Supermarket Type3" THEN Outlet_Type_GROUP_4 ="1";
ELSE Outlet_Type_GROUP_4 ="0";
RUN;
QUIT;
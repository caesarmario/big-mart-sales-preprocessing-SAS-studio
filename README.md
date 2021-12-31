<h1 align="center">🛒 Big Mart Sales Data Preprocessing & EDA 🛒</h1>
<p align="center">using <b>SAS Studio 🖥</b></p><br>
<p align="center">
  <img src="https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99" alt="Star Badge"/>
  <a href="https://www.github.com/caesarmario">
    <img src="https://img.shields.io/github/followers/caesarmario?style=social&link=https://www.github.com/caesarmario" alt"GitHub"/>
  </a>
  <a href="https://linktr.ee/caesarmario_">
    <img src="https://img.shields.io/badge/My%20Other%20Works-019875?style=flat&labelColor=019875&link=https:/linktr.ee/caesarmario_" alt="Linktree"/>
  </a>
  <!--<a href="https://www.kaggle.com/caesarmario/86-eligibility-prediction-w-various-ml-models/notebook">
    <img src="https://img.shields.io/badge/-Similar%20Works%20on%20Kaggle-teal?style=flat&logo=kaggle&logoColor=deepblue&link=https://www.kaggle.com/caesarmario/86-eligibility-prediction-w-various-ml-models/notebook" alt="Similar Works"/>
  </a> -->
</p>
<br>


## 📃 Table of Contents:
  - [About Project](#-about-project)
  - [Objectives](#-objectives)
  - [Data Set Description](#-data-set-description)
  - [Initial Data Exploration](#-initial-data-exploration)
      - [Data Sets Summary](#-data-sets-summary)
      - [Character Column Exploration](#-character-column-exploration)
      - [Continuous Column Exploration](#-continuous-column-exploration)
      - [Missing Values Exploration](#-missing-values)
  - [Data Pre Processing](#-data-pre-processing)
      - [Handling Dirty Data](#-handling-dirty-data)
      - [Handling Missing Values](#-handling-missing-values)
      - [Handling Outliers](#-handling-outliers)
  - [EDA](#-eda)
      - [Pearson Correlation](#-pearson-correlation)
      - [Item Fat Content based on Item Type](#-item-fat-content-based-on-item-type)
      - [Outlet Location Type based on Outlet Type](#-outlet-location-type-based-on-outlet-type)
      - [Outlet Identifier based on Outlet Size](#-outlet-identifier-based-on-outlet-size)
      - [Outlet Identifier based on Outlet Type](#-outlet-identifier-based-on-outlet-type)
  - [Hypothesis](#-hypothesis)
      - [Hypothesis 1](#1%EF%B8%8F⃣-hypothesis-1)
      - [Hypothesis 2](#2%EF%B8%8F⃣-hypothesis-2)
      - [Hypothesis 3](#3%EF%B8%8F⃣-hypothesis-3)
      - [Hypothesis 4](#4%EF%B8%8F⃣-hypothesis-4)
      - [Hypothesis 5](#5%EF%B8%8F⃣-hypothesis-5)
  - [Feature Engineering](#-feature-engineering)
      - [Binning](#-binning)
      - [Label Encoding](#-label-encoding)
      - [One Hot Encoding](#-one-hot-encoding)
  - [New Metadata](#-new-metadata)
<br>

## 🖋 About Project
👉 Dataset is taken from [Kaggle](https://www.kaggle.com/mrmorj/big-mart-sales). <br>
👉 In this project, will perform: <br>

  - Initial data exploration
  - Data Preprocessing
  - EDA
  - Hypothesis testing (statistical and non-statistical)
  - Feature engineering (one-hot encoding, label encoding, and binning)
<br><br>

## 📌 Objectives
*   Perform initial data exploration
*   Perform data preprocessing
*   Perform EDA
*   Perform hypothesis testing (statistical and non-statistical)
*   Perform feature engineering (one-hot encoding, label encoding, and binning)
<br><br>

## 🧾 Data Set Description
👉 There are **12 variables in this data sets**:
  - **5** **categorical** variables,
  - **5** **continuous** variables,
  - **1** variable to accommodate the **Item identifier (ID)**, and
  - **1** variable to accommodate the **Outlet identifier (ID)**.
<br>
👉 The variables available in this dataset are: <br><br>
<table>
<thead>
  <tr>
    <th>Column Name</th>
    <th>Data Type</th>
    <th>Type</th>
    <th>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Item_Identifier</td>
    <td>char</td>
    <td>Nominal</td>
    <td>Product ID</td>
  </tr>
  <tr>
    <td>Item_Weight</td>
    <td>num</td>
    <td>Ratio</td>
    <td>Weight of product</td>
  </tr>
  <tr>
    <td>Item_Fat_Content</td>
    <td>char</td>
    <td>Nominal</td>
    <td>Content of product (low fat or regular)</td>
  </tr>
  <tr>
    <td>Item_Visibility</td>
    <td>num</td>
    <td>Nominal</td>
    <td>The percentage of all products in the store that are assigned to a specific product in the total display area</td>
  </tr>
  <tr>
    <td>Item_Type</td>
    <td>char</td>
    <td>Nominal</td>
    <td>Category of product</td>
  </tr>
  <tr>
    <td>Item_MRP</td>
    <td>num</td>
    <td>Ratio</td>
    <td>Maximum retail price of a product</td>
  </tr>
  <tr>
    <td>Outlet_Identifier</td>
    <td>char</td>
    <td>Nominal</td>
    <td>Store ID</td>
  </tr>
  <tr>
    <td>Outlet_Establishment_Year</td>
    <td>num</td>
    <td>Nominal</td>
    <td>Year the store established</td>
  </tr>
  <tr>
    <td>Outlet_Size</td>
    <td>char</td>
    <td>Ordinal</td>
    <td>Size of the store</td>
  </tr>
  <tr>
    <td>Outlet_Location_Type</td>
    <td>char</td>
    <td>Ordinal</td>
    <td>The type of city where the store is located</td>
  </tr>
  <tr>
    <td>Outlet_Type</td>
    <td>char</td>
    <td>Ordinal</td>
    <td>Type of the store</td>
  </tr>
  <tr>
    <td>Item_Outlet_Sales</td>
    <td>num</td>
    <td>Nominal</td>
    <td>Sales of product</td>
  </tr>
</tbody>
</table>
<br><br>

## 📊 Initial Data Exploration
### 🏛 Data Sets Summary:
![](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Data%20Preprocessing/Dataset%20Summary.png)<br><br>

### 🔠 Character Column Exploration:
*   Item_Identifier <br>
![Item_Identifier](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Item_Identifier.png)<br>
    - It can be seen that there are 1559 different item IDs in the “Item_Identifier” column. 
    - Besides, there are “Item_Identifier” values that start with the same specific character, such as “DR”, “FD”, and “NC”, followed by numbers at the end of a value.
<br><br>

*   Item_Fat_Content <br>
![Item_Fat_Content](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Item_Fat_Content.png)<br>
    - It can be seen that most of the products are categorized as “Low Fat” products with a percentage of 59.71%.
    - It can be seen that there are inconsistent values have the same meaning but in different values, such as “LF”, “low fat”, and “reg”. 
    - These variables will be preprocessed in the next section.
<br><br>

*   Item_Type <br>
![Item_Type](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Item_Type.png)<br>
    - There are 16 item types in the dataset, with “Fruits and vegetables” became the item type with the highest number, with a percentage of 14.46%.
    - However, the lowest number item type is “Seafood”, which only has a percentage of 0.75%.
<br><br>

*   Outlet_Identifier <br>
![Outlet_Identifier](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Outlet_Identifier.png)<br>
    - It can be seen there are ten outlets in the dataset, with all the outlets percentage have almost the same number of outlets (about 10%).
    - However, the percentage of outlets “OUT10” and “OUT19” have the least number of outlets, only 6%.
<br><br>

*   Outlet_Size <br>
![Outlet_Size](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Outlet_Size.png)<br>
    - There are 3 types of outlet size, and “Medium” size becomes the size of outlet with the most number in the dataset with a percentage of 45.69%.
    - The smallest number outlet size is the “High” size which only has the percentage of 15.25%.
<br><br>

*   Outlet_Location_Type <br>
![Outlet_Location_Type ](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Outlet_Location_Type.png)<br>
    - There are 3 levels of outlet, and “Tier 3” becomes the tier of outlet with the most number in the dataset with a percentage of 39.31%.
    - The smallest tier of outlet is the “Tier 1”, which only have a percentage of 28.02%.
<br><br>

*   Outlet_Type <br>
![Outlet_Type](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Outlet_Type.png)<br>
    - It can be seen there are four outlet types in this dataset, and “Supermarket Type 1” become the type of outlet with the most number in the dataset with a percentage of 65.43%.
    - The smallest number of outlet types are “Supermarket Type 2” with only a percentage of 10.89% and “Supermarket Type 3” with only 10.97%.
<br><br>

### 🔢 Continuous Column Exploration:
*   Item_Weight <br>
![Item_Weight](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Item_Weight.png)<br>
    - It can be seen that the distribution is normal, which means no outliers in this column.
<br><br>

*   Item_Visibility <br>
![Item_Visibility_1](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Item_Visibility_1.png)<br>
![Item_Visibility_2](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Item_Visibility_2.png)<br>
    - This figure shows that the distribution is right-skewed distributions, which has a long right tail, and the mean position is on the right side of the data.
    - It can be seen that there are outliers in this column and the minimum value in this column is 0. 
    - These outliers will be pre processed in the next section.
<br><br>

*   Item_MRP <br>
![Item_MRP](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Item_MRP.png)<br>
    - It can be seen that the distribution is normal (no outliers detected).
<br><br>

*   Outlet_Establishment_Year <br>
![Outlet_Establishment_Year](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Outlet_Establishment_Year.png)<br>
    - It can be seen that the distribution is normal, which means no outliers in this column.
<br><br>

*   Item_Outlet_Sales <br>
![Item_Outlet_Sales](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Item_Outlet_Sales_1.png)<br>
![Item_Outlet_Sales](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Initial%20Data%20Exploration/Item_Outlet_Sales_2.png)<br>
    - It can be seen that the distribution is right-skewed distributions, which has a long right tail, and the mean is usually to the right of the median of the data.
    - It can be seen that there are outliers value in this column.
    - These outliers will be pre processed in the next section.
<br><br>

### ❓ Missing Values:
![Missing Values_1](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Data%20Preprocessing/Missing%20Values%20-%201.png)<br>
![Missing Values_2](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Data%20Preprocessing/Missing%20Values%20-%202.png)<br>
👉 It can be seen that there are missing values in the “Item_Weight” column (1463 missing values) and the “Outlet_Size” column (2410 missing values).<br>
👉 These missing values will be pre processed in the next section.
<br><br>

## ⚙ Data Pre-processing
### 🧹 Handling Dirty Data:
👉 The previous section already mentioned inconsistent values in the “Item_Fat_Content” column, which have the same meaning but in different forms. <br><br>
![Handling Dirty Data](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Data%20Preprocessing/Handling%20Dirty%20Data.png)<br><br>
👉 It can be seen now that the inconsistent values have been replaced into the same values, such as “LF” to “Low Fat”, “reg” to “Regular”, etc. <br><br>

### ❓ Handling Missing Values:
*   Outlet_Size <br>
![Handling Missing Values_1](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Data%20Preprocessing/Handling%20Missing%20Values%20-%201.png)<br> 
    👉 It can be seen that the “Small” outlet size belongs to “Grocer Store” and “Supermarket Type1” outlet type. <br>
    👉 However, if the total “Outlet_Size” outlets are added up, the “Medium” size outlet is much bigger than the “Small” size outlets. <br>
    👉 In this case, it was decided to fill in the missing data by following the previous data (last value replacement method) to reduce the biased of analysis.<br><br>
    
![Handling Missing Values_2](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Data%20Preprocessing/Handling%20Missing%20Values%20-%202.png)<br> 
    👉 Based on "Outlet_Identifier" column, it can be seen that “OUT010”, “OUT017”, and “OUT045” outlets have missing values in the “Outlet_Size” column.<br><br>

![Handling Missing Values_3](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Data%20Preprocessing/Handling%20Missing%20Values%20-%203.png)<br> 
    👉 The table shows the comparison between before and after imputing missing values in the “Outlet_Size” column. <br>
    👉 It can be seen that the missing values have disappeared, and outlet size for “OUT010”, “OUT017”, and “OUT045” already imputed. <br><br>

*   Item_Weight <br>
![Item_Weight based on Item_Identifier - 1](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Data%20Preprocessing/Item_Weight%20based%20on%20Item_Identifier%20-%201.png)<br> 
    👉 It can be seen that there are some previous “Item_Weight” values in the dataset based on the “Item_Identifier” column. <br>
    👉 In this case, it was decided to fill these missing values by following the previous data (last value replacement method) to reduce the biased of analysis that will be performed in the next section. <br><br>

![Item_Weight based on Item_Identifier - 2](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Data%20Preprocessing/Item_Weight%20based%20on%20Item_Identifier%20-%202.png)<br> 
    👉 There are still missing values in the “Item_Weight” column. <br>
    👉 This is because the item ID does not have the value in the previous record. <br>
    👉 The values will be filled with the “Item_Weight” column's mean value.
<br><br>

![Item_Weight based on Item_Identifier - 3](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Data%20Preprocessing/Item_Weight%20based%20on%20Item_Identifier%20-%203.png)<br> 
    👉 The table shows the comparison between before and after imputing missing values in the “Item_Weight” column. <br>
    👉 It can be seen that the missing values have disappeared.
<br><br>

### 🔧 Handling Outliers:
👉 From previous section, it can be seen that "Item_Visibility" and "Item_Outlet_Sales" have outliers.<br>
👉 This section will transform the column values using log and square root transformation, then compare which one is the best transformation for this case. <br><br>
![Item_Visibility & Item_Outlet_Sales Transformation](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Data%20Preprocessing/Item_Visibility%20%26%20Item_Outlet_Sales%20Transformation.png)<br><br>
👉 It can be seen that the square root transformation is better than the log transformation for these two columns since the frequency distribution of the square root transformation is closer to the normal distribution even though there are still outliers in both columns.
<br><br>

## 📈 EDA
### 🧮 Pearson Correlation:
![EDA 1](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/EDA/EDA_1.png)<br><br>
👉 It can be seen there is a high correlation between the “Item_MRP” and the square root transformation of “Item_Outlet_Sales”, with a coefficient of 0.56343. <br>
👉 there is also a weak correlation between “Item_MRP” with “Item_Weight”, with a coefficient of 0.02597. <br><br>

### 🥧 Item Fat Content based on Item Type:
![EDA 2](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/EDA/EDA_2.png)<br><br>
👉 As can be seen, the “Household” item becomes the item type with the most number in the “Low Fat” category with a percentage of 16.49%. 
👉 However, the item type with the smallest number in the “Low Fat” category is the “Baking Good” items with a percentage of 5.96%. <br>
👉 In addition, “Fruits and Vegetables” is the most number in the “Regular” category with a percentage of 20.03%. <br>
👉 However, “Meat” is the item with the smallest number in the “Regular” category with a percentage of 8.48%. <br><br>

### 📉 Outlet Location Type based on Outlet Type:
![EDA 3](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/EDA/EDA_3.png)<br><br>
👉 In general, “Supermarket Type1” is an outlet type owned only by the “Tier 2” outlet locations. <br>
👉 In addition, the “Supermarket Type1” outlet type has the most “Tier 1” outlet locations, with a percentage of 21.8% compared to the “Grocery Store” outlet type with a percentage of 6.2%. <br>
👉 The total number of “Tier 3” outlet locations is almost the same for each outlet type, approximately 11%. <br><br>

### 💹 Outlet Identifier based on Outlet Size:
![EDA 4](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/EDA/EDA_4.png)<br><br>
👉 Most outlets have more “Small” size-types than the other size types, and the number each outlet has is approximately the same. <br>
👉 Other than that, outlets “OUT046”, “OUT045”, “OUT035”, “OUT019”, “OUT017”, and “OUT010” only have the “Small” size type. <br>
👉 However, the “OUT019” and “OUT010” outlets have fewer outlets than the other outlets with a similar type size, around 500 outlets. <br>
👉 “OUT049”, “OUT027”, and “OUT018” only have the size type “Medium,” and “OUT013” only have the size type “High”. <br><br>

### 📊 Outlet Identifier based on Outlet Type:
![EDA 5](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/EDA/EDA_5.png)<br><br>
👉 In general, the data for “Supermarket Type1” has symmetrical data (the median is in the middle of the box plot), which means that the data is normally distributed. <br>
👉 The larger the outlet type, the more items are purchased at the outlet. <br><br>

## 🧪 Hypothesis
### 1️⃣ Hypothesis 1:
*   H0: Outlet_Establishment_Year is normally distributed.
*   H1: Outlet_Establishment_Year is not normally distributed.

![Hypo 1](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Hypothesis/Hypo_1.png)<br>
▶ **Conclusion**: H0 rejected <br>
👉 From Kolmogorov-Smirnov test, it can be concluded that H0 rejected since the D value is < 1 and the p-value < 0.05. <br><br>

### 2️⃣ Hypothesis 2:
*   H0: There is no heteroscedasticity between “Item_MRP” and “Item_Weight”.
*   H1: There is heteroscedasticity between “Item_MRP” and “Item_Weight”.

![Hypo 2](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Hypothesis/Hypo_2.png)<br>
▶ **Conclusion**: H0 accepted <br>
👉 It can be seen that there is no specific pattern for irregular points spread above and below the 0 axes on the Y-axis. <br>
👉 It can be concluded that there is no heteroscedasticity between “Item_MRP” and “Item_Weight”. <br><br>

### 3️⃣ Hypothesis 3:
*   H0: Tier 3 has the most numbers in “High” size outlets.
*   H1: Tier 3 does not have the most numbers in “High” size outlets.

![Hypo 3](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Hypothesis/Hypo_3.png)<br>
▶ **Conclusion**: H0 rejected <br>
👉 As can be seen, “Tier 3” has the most numbers in “Medium” size outlets with 1863 outlets, followed by “High” size outlets with 932 outlets. <br><br>

### 4️⃣ Hypothesis 4:
*   H0: There was a decrease in the number of outlets from 1985 to 1998.
*   H1: There was an increase in the number of outlets from 1985 to 1998.

![Hypo 4](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Hypothesis/Hypo_4.png)<br>
▶ **Conclusion**: H0 accepted <br>
👉 It can be seen that there was a decrease in the number of outlets from 1463 outlets in the year 1985 to 555 outlets in the year 1998. <br><br>

### 5️⃣ Hypothesis 5:
*   H0: The number of “Supermarket Type1” reached its peak in 1987.
*   H1: The number of “Supermarket Type1” not reached its peak in 1987.

![Hypo 5](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Hypothesis/Hypo_5.png)<br>
▶ **Conclusion**: H0 accepted <br>
👉 It can be seen that the number of “Supermarket Type1” reached its peak in 1987 with 932 outlets. <br>
👉 However, in 2007, the number of “Supermarket Type1” only 926 outlets. <br><br>

<!-- Feature Engineering -->
## ⚒ Feature Engineering
### 🧺 Binning
*   Item_Category <br>
![Item_Category](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Feature%20Engineering/Item_Category%20-%20Binning.png)<br> 
    - It can be seen that for item ID in the "Item_Identifier" column that starts with character "DR" will be classified as "Drink, "FD" will be classified as "Food", and "NC" will be classified as "Non-Consumable".
<br><br>

*   Age_Outlet <br>
![Age_Outlet](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Feature%20Engineering/Age_Outlet%20-%20Binning.png)<br> 
    - It can be seen that the age of an outlet is derived from the reduction in the year the outlet was established by 2021.
<br><br>

*   Outlet_Category <br>
![Outlet_Category](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Feature%20Engineering/Outlet_Category%20-%20Binning.png)<br> 
    - It can be seen that the age of outlets is classified into three categories: "New Outlet" for outlets aged 1-10 years, "Moderate Outlet" for outlets aged 11-20 years, and "Old Outlet" for those over 20 years old
<br><br>


### 🔖 Label Encoding
👉 This section will perform label encoding for "Item_Fat_Content" column. <br>
👉 The label encoding will be described as follows: <br><br>
<table>
<thead>
  <tr>
    <th>Column Name</th>
    <th>Level</th>
    <th>Encoded Label</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="2">Item_Fat_Content</td>
    <td>Low Fat</td>
    <td>0</td>
  </tr>
  <tr>
    <td>Regular</td>
    <td>1</td>
  </tr>
</tbody>
</table>
<br>

![Item_Fat_Content_Encoding](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Feature%20Engineering/Item_Fat%20-%20Label%20Encoding.png)

<br>

### 🔥 One-Hot Encoding
*   Item_Category <br>
![Item_Category_Enc](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Feature%20Engineering/Item_Category%20-%20One-Hot.png)<br> 
    - For "Drink" category will be included in group 1, "Food" will be included in group 2, and "Non-Consumable" will be included in group 3.
<br><br>

*   Outlet_Category <br>
![Outlet_Category_Enc](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Feature%20Engineering/Outlet_Category%20-%20One-Hot.png)<br> 
    - For "New Outlet" category will be included in group 1, "Moderate Outlet" will be included in group 2, and "Old Outlet" will be included in group 3.
<br><br>

*   Outlet_Size <br>
![Outlet_Size_Enc](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Feature%20Engineering/Outlet_Size%20-%20One-Hot.png)<br> 
    - For "Small" category will be included in group 1, "Medium" will be included in group 2, and "High" will be included in group 3.
<br><br>

*   Outlet_Location_Type <br>
![Outlet_Location_Type_Enc](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Feature%20Engineering/Outlet_Location_Type%20-%20One-Hot.png)<br> 
    - For "Tier 1" category will be included in group 1, "Tier 2" will be included in group 2, and "Tier 3" will be included in group 3.
<br><br>

*   Outlet_Type <br>
![Outlet_Type_Enc](https://github.com/caesarmario/big-mart-sales-preprocessing-SAS-studio/blob/main/Feature%20Engineering/Outlet_Type%20-%20One-Hot.png)<br> 
    - For "Grocery Store" category will be included in group 1, "Supermarket Type1" will be included in group 2, "Supermarket Type2" will be included in group 3, and "Supermarket Type3" will be included in group 4.
<br><br>

## 📜 New Metadata
<table>
<thead>
  <tr>
    <th>Column Name</th>
    <th>Data Type</th>
    <th>Description</th>
    <th>Instances</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Item_Identifier</td>
    <td>Char</td>
    <td>ProductID</td>
    <td>{FDA15, DRC01, FDN15, …}</td>
  </tr>
  <tr>
    <td><b>Item_Category</b></td>
    <td><b>Char</b></td>
    <td><b>Category of a product<br>(Drink, Food, Non-Consumable)</b></td>
    <td><b>{Food, Drink, Food, …}</b></td>
  </tr>
  <tr>
    <td><b>Item_Category_GROUP_1</b></td>
    <td><b>Num</b></td>
    <td><b>Encoded Item_Category<br>0≠ Drink<br>1= Drink</b></td>
    <td><b>{0, 1, 0, …}</b></td>
  </tr>
  <tr>
    <td><b>Item_Category_GROUP_2</b></td>
    <td><b>Num</b></td>
    <td><b>Encoded Item_Category<br>0≠ Food<br>1= Food</b></td>
    <td><b>{1, 0, 1, …}</b></td>
  </tr>
  <tr>
    <td><b>Item_Category_GROUP_3</b></td>
    <td><b>Num</b></td>
    <td><b>Encoded Item_Category<br>0≠ Non-Consumable<br>1= Non-Consumable</b></td>
    <td><b>{0, 0, 0, …}</b></td>
  </tr>
  <tr>
    <td>Item_Weight</td>
    <td>Num</td>
    <td>The product's weight</td>
    <td>{9.3, 5.92, 17.5, …}</td>
  </tr>
  <tr>
    <td>Item_Fat_Content</td>
    <td>Char</td>
    <td>Content of product<br>(Low Fat or Regular)</td>
    <td>{Low Fat, Regular, Low Fat, …}</td>
  </tr>
  <tr>
    <td><b>Item_Fat_Content_Encoding</b></td>
    <td><b>Num</b></td>
    <td><b>Types of Product Content<br>0= Low Fat<br>1= Regular</b></td>
    <td><b>{0,1, 0, …}</b></td>
  </tr>
  <tr>
    <td>Item_Visibility</td>
    <td>Num</td>
    <td>The percentage of a store's overall display area that is dedicated to a single product.</td>
    <td>{0.016047301,0.019278216, 0.016760075, …}</td>
  </tr>
  <tr>
    <td>Item_Type</td>
    <td>Char</td>
    <td>Category of product<br>(Soft Drinks, Dairy, Hard Drinks, Canned, Frozen Foods, Fruits and Vegetables, Snack Foods, Baking Goods, Starchy Foods, Meat, Seafood, Breakfast, Breads, Health and Hygiene, Household, Others)</td>
    <td>{Dairy, Soft Drinks, Meat, …}</td>
  </tr>
  <tr>
    <td>Item_MRP</td>
    <td>Num</td>
    <td>Maximum Retail Price of a product</td>
    <td>{249.8092,48.2692, 141.618, …}</td>
  </tr>
  <tr>
    <td>Outlet_Identifier</td>
    <td>Char</td>
    <td>Outlet ID</td>
    <td>{OUT049,OUT018, OUT049, …}</td>
  </tr>
  <tr>
    <td>Outlet_Establishment_Year</td>
    <td>Num</td>
    <td>Year the outlet established</td>
    <td>{1999,2009, 1999, …}</td>
  </tr>
  <tr>
    <td><b>Age_Outlet</b></td>
    <td><b>Num</b></td>
    <td><b>Age of an outlet based on "Outlet_Establishment_Year" and 2021</b></td>
    <td><b>{22,12, 22, …}</b></td>
  </tr>
  <tr>
    <td><b>Outlet_Category</b></td>
    <td><b>Char</b></td>
    <td><b>Category of an outlet based on age<br>0-10= New Outlet<br>11-20= Moderate Outlet<br> >20= Old Outlet</b></td>
    <td><b>{OldOutlet, Moderate Outlet, Old Outlet, …}</b></td>
  </tr>
  <tr>
    <td><b>Outlet_Category_GROUP_1</b></td>
    <td><b>Num</b></td>
    <td><b>Encoded Outlet_Category<br>0≠ New Outlet<br>1= New Outlet</b></td>
    <td><b>{0, 0, 0, …}</b></td>
  </tr>
  <tr>
    <td><b>Outlet_Category_GROUP_2</b></td>
    <td><b>Num</b></td>
    <td><b>Encoded Outlet_Category<br>0≠ Moderate Outlet<br>1= Moderate Outlet</b></td>
    <td><b>{0, 1, 0, …}</b></td>
  </tr>
  <tr>
    <td><b>Outlet_Category_GROUP_3</b></td>
    <td><b>Num</b></td>
    <td><b>Encoded Outlet_Category<br>0≠ Old Outlet<br>1= Old Outlet</b></td>
    <td><b>{1, 0, 1, …}</b></td>
  </tr>
  <tr>
    <td>Outlet_Size</td>
    <td>Char</td>
    <td>Size of the store<br>(Small, Medium, High)</td>
    <td>{Medium, Medium, Medium, …}</td>
  </tr>
  <tr>
    <td><b>Outlet_Size_GROUP_1</b></td>
    <td><b>Num</b></td>
    <td><b>EncodedOutlet_Size<br>0≠ Small<br>1= Small</b></td>
    <td><b>{0, 0, 0, …}</b></td>
  </tr>
  <tr>
    <td><b>Outlet_Size_GROUP_2</b></td>
    <td><b>Num</b></td>
    <td><b>EncodedOutlet_Size<br>0≠ Medium<br>1= Medium</b></td>
    <td><b>{1, 1, 1, …}</b></td>
  </tr>
  <tr>
    <td><b>Outlet_Size_GROUP_3</b></td>
    <td><b>Num</b></td>
    <td><b>EncodedOutlet_Size<br>0≠ High<br>1= High</b></td>
    <td><b>{0, 0, 0, …}</b></td>
  </tr>
  <tr>
    <td>Outlet_Location_Type</td>
    <td>Char</td>
    <td>Thetype of city where the store is located(Tier1, Tier 2, Tier 3)</td>
    <td>{Tier1, Tier 3, Tier 1, …}</td>
  </tr>
  <tr>
    <td><b>Outlet_Location_Type_GROUP_1</b></td>
    <td><b>Num</b></td>
    <td><b>Encoded Outlet_Location_Type<br>0≠ Tier 1<br>1= Tier 1</b></td>
    <td><b>{1, 0, 1, …}</b></td>
  </tr>
  <tr>
    <td><b>Outlet_Location_Type_GROUP_2</b></td>
    <td><b>Num</b></td>
    <td><b>Encoded Outlet_Location_Type<br>0≠ Tier 2<br>1= Tier 2</b></td>
    <td><b>{0, 0, 0, …}</b></td>
  </tr>
  <tr>
    <td><b>Outlet_Location_Type_GROUP_3</b></td>
    <td><b>Num</b></td>
    <td><b>Encoded Outlet_Location_Type<br>0≠ Tier 3<br>1= Tier 3</b></td>
    <td><b>{0, 1, 0, …}</b></td>
  </tr>
  <tr>
    <td>Outlet_Type</td>
    <td>Char</td>
    <td>Type of the store<br>(Grocery Store, Supermarket Type1, Supermarket Type2, Supermarket Type3)</td>
    <td>{Supermarket Type1, Supermarket Type2, Supermarket Type1, …}</td>
  </tr>
  <tr>
    <td><b>Outlet_Type_GROUP_1</b></td>
    <td><b>Num</b></td>
    <td><b>EncodedOutlet_Type<br>0≠ Grocery Store<br>1= Grocery Store</b></td>
    <td><b>{0, 0, 0, …}</b></td>
  </tr>
  <tr>
    <td><b>Outlet_Type_GROUP_2</b></td>
    <td><b>Num</b></td>
    <td><b>Encoded Outlet_Type<br>0≠ Supermarket Type1<br>1= Supermarket Type1</b></td>
    <td><b>{1, 0, 1, …}</b></td>
  </tr>
  <tr>
    <td><b>Outlet_Type_GROUP_3</b></td>
    <td><b>Num</b></td>
    <td><b>EncodedOutlet_Type<br>0≠ Supermarket Type2<br>1= Supermarket Type2</b></td>
    <td><b>{0, 1, 0, …}</b></td>
  </tr>
  <tr>
    <td><b>Outlet_Type_GROUP_4</b></td>
    <td><b>Num</b></td>
    <td><b>Encoded Outlet_Type<br>0≠ Supermarket Type3<br>1= Supermarket Type3</b></td>
    <td><b>{0, 0, 0, …}</b></td>
  </tr>
  <tr>
    <td>Item_Outlet_Sales</td>
    <td>Num</td>
    <td>Sales of product</td>
    <td>{3735.138, 443.4228, 2097.27, …}</td>
  </tr>
</tbody>
</table>
<br>

## 🙌 Support me!
👉 If you find this project useful, **please ⭐ this repository 😆**!
### 🎈 Check out my _**data pre-processing and feature engineering using Python**_ on Kaggle [here](https://www.kaggle.com/caesarmario/data-pre-processing-feature-engineering)!
  
---

👉 _More about myself: <a href="https://linktr.ee/caesarmario_"> here </a>_

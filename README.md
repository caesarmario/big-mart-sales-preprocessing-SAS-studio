<h1 align="center">🛒 Big Mart Sales Data Preprocessing & EDA 🛒</h1>
<p align="center">using <b>SAS Studio 🖥</b></p><br>
<p align="center">
  <img src="https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99" alt="Star Badge"/>
  <a href="https://www.github.com/caesarmario">
    <img src="https://img.shields.io/github/followers/caesarmario?style=social&link=https://www.github.com/caesarmario" alt"GitHub"/>
  </a>
  <a href="https://linktr.ee/caesarmario_">
    <img src="https://img.shields.io/badge/Follow%20My%20Other%20Works-019875?style=flat&labelColor=019875&link=https:/linktr.ee/caesarmario_" alt="Linktree"/>
  </a>
  <!--<a href="https://www.kaggle.com/caesarmario/86-eligibility-prediction-w-various-ml-models/notebook">
    <img src="https://img.shields.io/badge/-Similar%20Works%20on%20Kaggle-teal?style=flat&logo=kaggle&logoColor=deepblue&link=https://www.kaggle.com/caesarmario/86-eligibility-prediction-w-various-ml-models/notebook" alt="Similar Works"/>
  </a> -->
</p>
<br>

<!-- 
## 📃 Table of Contents:
  - [About Project](#-about-project)
  - [Objectives](#-objectives)
  - [Data Set Description](#-data-set-description)
  - [Initial Data Exploration](#-initial-data-exploration)

  - [EDA](#-eda)
      - [Data Sets Structure](#-data-sets-structure)
      - [Training Data Set](#-training-data-set)
          - [Univariate](#-univariate---training)
          - [Bivariate](#-bivariate---training)
      - [Testing Data Set](#-testing-data-set)
          - [Univariate](#-univariate---testing)
          - [Bivariate](#-bivariate---testing)
  - [Data Imputation](#-data-imputation)
  - [Logistic Regression Result](#-logistic-regression-result)
      - [Logistic Regression Summary](#-summary-of-logistic-regression)
      - [Model Output](#-logistic-regression-model-output)
      - [Prediction Output](#-prediction-output)

## 🖋 About Project:
👉 Dataset is taken from [Kaggle](https://www.kaggle.com/mrmorj/big-mart-sales).
👉 In this project, will do:
      - Initial data exploration
      - Data Preprocessing
      - EDA
      - Hypothesis testing (statistical and non-statistical)
      - Feature engineering (one-hot encoding, label encoding, and binning)
<br><br>

## 📌 Objectives:
*   Perform initial data exploration
*   Perform data preprocessing
*   Perform EDA
*   Perform hypothesis testing (statistical and non-statistical)
*   Perform feature engineering (one-hot encoding, label encoding, and binning)
<br><br>

## 🧾 Data Set Description:
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
<!--BOOKMARK

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
    <td rowspan="2">Item_Identifier</td>
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
## 📊 EDA:


*   Loan Amount <br>
![Loan Amount](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanAmount.png)<br><br>


-->

  <!-- ### 🎈 Check out my works on Kaggle [here](https://www.kaggle.com/caesarmario/86-eligibility-prediction-w-various-ml-models/notebook) using similar data set with **86% accuracy**! -->

## 🙌 Support me!
👉 If you find this project useful, **please ⭐ this repository 😆**!

---

👉 _More about myself: <a href="https://linktr.ee/caesarmario_"> here </a>_

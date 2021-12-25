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
  </a>
</p>
<br>

## 📃 Table of Contents:
  - [About Project](#-about-project)
  - [Objectives](#-objectives)
  - [Data Set Description](#-data-set-description)
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
👉 Lasiandra Finance Inc. (LFI) New York, USA is a leading private financing company which caters the funding needs of Small and Medium enterprises (SME). LFI clearly understood that some business dreams need that extra push to see them accelerated. Hence it allows its loaning process as tailor-made and customer centric. In the past few years, it has tremendously expanded its wings and to speed up the process, it needs to automate the loan eligibility process based on customer portfolio entered online. <br><br>
👉 The main problem faced by the LFI is the approval process of the loans. Because it is a complicated procedure of verification and validation but still there is no guarantee whether the chosen applicant is the deserving one out of all applicants. **Hence, it needs a machine learning model which can predict the loan approval**. <br><br>
👉 As data scientist in LFI, it is needed to **analyze the data set obtained from the past customer and build logistic regression model to predict the approval process**.
<br><br>

## 📌 Objectives:
*   Analyze customer data provided in data set (EDA)
*   Build logistic regression that can predict loan approval
<br><br>

## 🧾 Data Set Description:
👉 There are **2 data sets** used in this project, **"TRAINING_DS.csv"** and **"TESTING_DS.csv"**. <br>
👉 There are **13 variables in this data sets**:
  - **8** **categorical** variables,
  - **4** **continuous** variables, and
  - **1** variable to accommodate the **loan ID**
<br>
👉 The structure of the two data sets that have been given: <br><br>
<table style="width:100%">
<thead>
<tr>
  <th style="text-align:center; font-weight: bold; font-size:14px">Variable Name</th>
  <th style="text-align:center; font-weight: bold; font-size:14px">Description</th>
  <th style="text-align:center; font-weight: bold; font-size:14px">Sample Data</th>
</tr>
</thead>
<tbody>
<tr>
<td><b>Loan_ID</b></td>
<td>Loan reference number <br> (unique ID)</td>
<td>LP001002; LP001003; ...</td>
</tr>
<tr>
<td><b>Gender</b></td>
<td>Applicant gender <br> (Male or Female)</td>
<td>Male; Female</td>
</tr>
<tr>
<td><b>Married</b></td>
<td>Applicant marital status <br> (Married or not married)</td>
<td>Married; Not Married</td>
</tr>
<tr>
<td><b>Dependents</b></td>
<td>Number of family members</td>
<td>0; 1; 2; 3+</td>
</tr>
<tr>
<td><b>Education</b></td>
<td>Applicant education/qualification <br> (graduate or not graduate)</td>
<td>Graduate; Under Graduate</td>
</tr>
<tr>
<td><b>Self_Employed</b></td>
<td>Applicant employment status <br> (yes for self-employed, no for employed/others)</td>
<td>Yes; No</td>
</tr>
<tr>
<td><b>ApplicantIncome</b></td>
<td>Applicant's monthly salary/income</td>
<td>5849; 4583; ...</td>
</tr>
<tr>
<td><b>CoapplicantIncome</b></td>
<td>Additional applicant's monthly salary/income</td>
<td>1508; 2358; ...</td>
</tr>
<tr>
<td><b>LoanAmount</b></td>
<td>Loan amount</td>
<td>128; 66; ...</td>
</tr>
<tr>
<td><b>Loan_Amount_Term</b></td>
<td>The loan's repayment period (in days)</td>
<td>360; 120; ...</td>
</tr>
<tr>
<td><b>Credit_History</b></td>
<td>Records of previous credit history <br> (0: bad credit history, 1: good credit history)</td>
<td>0; 1</td>
</tr>
<tr>
<td><b>Property_Area</b></td>
<td>The location of property <br> (Rural/Semiurban/Urban)</td>
<td>Rural; Semiurban; Urban</td>
</tr>
<tr>
<td><b>Loan_Status</b></td>
<td>Status of loan <br> (Y: accepted, N: not accepted)</td>
<td>Y; N</td>
</tr>
</tbody>
</table>

## 📊 EDA:
### 🏛 Data Sets Structure:
![](https://raw.githubusercontent.com/caesarmario/loan-prediction-SAS-studio/main/Screenshot/Dataset%20Structure.png)

### ⚙ Training Data Set
#### ▶ Univariate - Training:
*   Gender <br>
![Gender](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)<br><br>
*   Marital Status <br>
![Marital Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_MaritalStatus.png)<br><br>
*   Family Members <br>
![Family Members](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_FamilyMembers.png)<br><br>
*   Qualification <br>
![Qualification](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Qualification.png)<br><br>
*   Employment <br>
![Employment](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Employment.png)<br><br>
*   Loan History <br>
![Loan History](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanHistory.png)<br><br>
*   Loan Location <br>
![Loan Location](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanLocation.png)<br><br>
*   Loan Approval Status <br>
![Loan Approval Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanApprovalStatus.png)<br><br>
*   Candidate Income <br>
![Candidate Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_CandidateIncome.png)<br><br>
*   Guarantee Income <br>
![Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_GuaranteeIncome.png)<br><br>
*   Loan Amount <br>
![Loan Amount](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanAmount.png)<br><br>
*   Loan Duration <br>
![Loan Duration](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanDuration.png)<br><br>

#### ▶ Bivariate - Training:
*   Gender - Marital Status <br>
![Gender - Marital Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_Gender_MaritalStatus.png)<br><br>
*   Family Members - Qualification <br>
![Family Members - Qualification](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_FamilyMembers_Qualification.png)<br><br>
*   Employment - Loan History <br>
![Employment - Loan History](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_Employment_LoanHistory.png)<br><br>
*   Loan Location - Loan Approval Status <br>
![Loan Location - Loan Approval Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanLocation_LoanApprovalStatus.png)<br><br>
*   Gender - Loan Approval Status <br>
![Gender - Loan Approval Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_Gender_LoanApprovalStatus.png)<br><br>
*   Loan Approval Status - Candidate Income <br>
![Loan Approval Status - Candidate Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanApprovalStatus_CandidateIncome.png)<br><br>
*   Loan Approval Status - Guarantee Income <br>
![Loan Approval Status - Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanApprovalStatus_GuaranteeIncome.png)<br><br>
*   Loan Approval Status - Loan Amount <br>
![Loan Approval Status - Loan Amount](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanApprovalStatus_LoanAmount.png)<br><br>
*   Candidate Income - Guarantee Income <br>
![Candidate Income - Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_CandidateIncome_GuaranteeIncome.png)<br><br>
*   Loan Amount - Loan Duration <br>
![Loan Amount - Loan Duration](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanAmount_LoanDuration.png)<br><br>

### ⚒ Testing Data Set
#### ▶ Univariate - Testing:
*   Gender <br>
![Gender](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_Gender.png)<br><br>
*   Marital Status <br>
![Marital Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_MaritalStatus.png)<br><br>
*   Family Members <br>
![Family Members](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_FamilyMembers.png)<br><br>
*   Qualification <br>
![Qualification](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_Qualification.png)<br><br>
*   Employment <br>
![Employment](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_Employment.png)<br><br>
*   Loan History <br>
![Loan History](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_LoanHistory.png)<br><br>
*   Loan Location <br>
![Loan Location](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_LoanLocation.png)<br><br>
*   Candidate Income <br>
![Candidate Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_CandidateIncome.png)<br><br>
*   Guarantee Income <br>
![Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_GuaranteeIncome.png)<br><br>
*   Loan Amount <br>
![Loan Amount](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_LoanAmount.png)<br><br>
*   Loan Duration <br>
![Loan Duration](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_LoanDuration.png)<br><br>

#### ▶ Bivariate - Testing:
*   Gender - Marital Status <br>
![Gender - Marital Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Gender_MaritalStatus.png)<br><br>
*   Family Members - Qualification <br>
![Family Members - Qualification](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_FamilyMembers_Qualification.png)<br><br>
*   Employment - Loan History <br>
![Employment - Loan History](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Employment_LoanHistory.png)<br><br>
*   Gender - Qualification <br>
![Gender - Qualification](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Gender_Qualification.png)<br><br>
*   Gender - Loan Location <br>
![Gender - Loan Location](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Gender_LoanLocation.png)<br><br>
*   Family Members - Loan Location<br>
![Family Members - Loan Location](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_FamilyMembers_LoanLocation.png)<br><br>
*   Gender - Candidate Income <br>
![Gender - Candidate Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Gender_CandidateIncome.png)<br><br>
*   Marital Status - Guarantee Income <br>
![Marital Status - Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_MaritalStatus_GuaranteeIncome.png)<br><br>
*   Employment - Loan Amount <br>
![Employment - Loan Amount](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Employment_LoanAmount.png)<br><br>
*   Candidate Income - Guarantee Income <br>
![Candidate Income - Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_CandidateIncome_GuaranteeIncome.png)<br><br>
*   Loan Amount - Loan Duration <br>
![Loan Amount - Loan Duration](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_LoanAmount_LoanDuration.png)<br><br>
*   Candidate Income - Loan Duration <br>
![Candidate Income - Loan Duration](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_CandidateIncome_LoanDuration.png)<br><br>

## 🛠 Data Imputation:
👉 The data imputation will be described as follows: <br>
<table>
<thead>
  <tr>
    <th rowspan="7"><b>Training</b></th>
    <th rowspan="5"><i>Mode</i></th>
    <th>Gender</th>
  </tr>
  <tr>
    <th>Family Members</th>
  </tr>
  <tr>
    <th>Marital Status</th>
  </tr>
  <tr>
    <th>Employment</th>
  </tr>
  <tr>
    <th>Loan History</th>
  </tr>
  <tr>
    <th rowspan="2"><i>Mean</i></th>
    <th>Loan Amount</th>
  </tr>
  <tr>
    <th>Loan Duration</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="6"><b>Testing</b></td>
    <td rowspan="4"><i>Mode</i></td>
    <td>Gender</td>
  </tr>
  <tr>
    <td>Family Members</td>
  </tr>
  <tr>
    <td>Employment</td>
  </tr>
  <tr>
    <td>Loan History</td>
  </tr>
  <tr>
    <td rowspan="2"><i>Mean</i></td>
    <td>Loan Amount</td>
  </tr>
  <tr>
    <td>Loan Duration</td>
  </tr>
</tbody>
</table>
<br><br>

## 👨‍💻 Logistic Regression Result:
### ▶ Summary of Logistic Regression:
![LR - 1](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Output%20-%201.png)<br>
![LR - 2](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Output%20-%202.png)<br>
![LR - 3](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Output%20-%203.png)<br>
![LR - 4](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Output%20-%204.png)<br>

### ▶ Logistic Regression Model Output:
![LR Model Output](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Model%20Output.png)<br>

### ⚠ Prediction Output:
![Prediction Output](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Prediction%20Output.png)<br>
<br><br>
-->
  <!-- ### 🎈 Check out my works on Kaggle [here](https://www.kaggle.com/caesarmario/86-eligibility-prediction-w-various-ml-models/notebook) using similar data set with **86% accuracy**! -->

## 🙌 Support me!
👉 If you find this project useful, **please ⭐ this repository 😆**!

---

👉 _More about myself: <a href="https://linktr.ee/caesarmario_"> here </a>_

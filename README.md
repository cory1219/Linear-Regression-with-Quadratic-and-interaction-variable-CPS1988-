# Linear-Regression-with-Quadratic-and-interaction-variable-CPS1988-

In the model, I would like to predict wage, so
- dependent variable is wage
- indepedent variables are education, experience, ethnicity, smsa, region, parttime

To test the statistical significance in the model, the model's summary states:
1. All variables, including the intercept, are statistically significant (t value) at a significance level of 0.1 percent (Pr[>|t|]).
2. The entire model is statistically significant (F-statistic) at a significance level of 0.1 percent (p-value).

The accuracy of model is Adjusted R-squared: 0.3346.
This accuracy is not ideal for many reasons, such as imcomplete specification of the model.

The interpretation of the coefficients are:

1st scenario:
ethnicity = 0 (Caucasian-American worker) → 𝒍𝒏(𝒘𝒂𝒈𝒆𝒊) = 𝜷𝟎 + 𝜷𝟏 ∙ 𝒆𝒅𝒖𝒄𝒂𝒕𝒊𝒐𝒏𝒊 + 𝝁
𝛽0 =4.313 → wage = exp(4.313) =74.66 → Wage for Caucasian-American with no education and no experience
𝛽1 =0..08631 →𝑙𝑛⁡(𝑤𝑎𝑔𝑒′⁄𝑤𝑎𝑔𝑒)  =exp(0.08631) =1.09 → Wage increases by 9% for Caucasian-American for each additional year

2nd scenario:
ethnicity = 1 (African-American worker) → 𝒍𝒏(𝒘𝒂𝒈𝒆𝒊) = (𝜷𝟎 + 𝜷𝟐) + (𝜷𝟏 + 𝜷𝟑) ∙ 𝒆𝒅𝒖𝒄𝒂𝒕𝒊𝒐𝒏𝒊 + 𝝁
𝛽0+𝛽2 = 4.189 → wage = exp(4.189) = 65.96 → Wage for African-American without education and experience
𝛽2 = -0.124 → choose African-American as worker with no education and no experience→ ethnicity reduces wage by exp(-0.124)
𝛽1+𝛽3 = 0.07666 → 𝑙𝑛⁡(𝑤𝑎𝑔𝑒′⁄𝑤𝑎𝑔𝑒)=exp(0.07666)=1.08 → Wage increases by 8% for Caucasian-American for each additional year
𝛽3 =−0.00965 → choose African-American if education rises by one year → ethnicity affects education, reducing wage

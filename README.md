# Portugal-Prime-Bank-Marketing-Campaign-Analysis
Portugal Prime Bank Marketing Campaign Analysis
Project Background
There has been a revenue decline in the Portugal Prime Bank and after investigation, they found that the root cause was that their customers are not investing enough for long term deposits. So, they came up with a direct marketing campaign for 2021 and now would like to identify which clients have a higher chance to subscribe to a long-term deposit and focus marketing efforts on such customers and know what future actions to take.
Insights and recommendations are provided on the following areas:
•	Subscription rate Trend analysis: Evaluation of the subscription rate over the year and relationship with economic indicators.
•	Subscribed clients’ demographics: Analyzing clients’ likelihood to subscribe to long-term deposits depending on their demographics.
•	Subscribed clients’ banking information: Analyzing clients’ likelihood to subscribe according to their banking information.
•	Optimizing Marketing Efforts: Evaluating the best marketing time and method.

The Power Query file utilized to inspect and perform quality check prior to analysis can be found here.
The SQL queries used to aggregate and normalize the data can be found here.
Python code used to calculate probability statistics can be found here.
An interactive Power BI dashboard can be downloaded here.
Data Structure Overview
The data consists of four tables with 41K records that contain information about the campaign which is split over the months, information about the clients and the direct contact made for each of them, finally, information about the economic conditions associated with each month across the one-year period of the campaign. 

The Power Query file utilized to inspect and perform quality check prior to analysis can be found here.
Executive Summary
Throughout the campaign period, April and November had especially high subscription of rates 82% compared to a monthly average of 73%. Analysis shows that the clients most likely to subscribe to long-term deposits are those with a university degree or finished high school as they accounted for 60% of total subscribed clients. Also, clients with administrative position or in the technology section are more willing to invest as they represented 56% of the grand total. As for segmentation based on their banking information, clints with credit cards, have taken a personal loan, or have 1 or 2 bank products represent the majority of clients who subscribed. Finally, the data indicated that tenured clients have higher probability to subscribe to long-term deposits. 

An interactive Power BI dashboard can be downloaded here
Insights Deep Dive
Subscription Rate Trend Analysis
The data indicates the success of the marketing campaign with a monthly average subscription rate of 73% and exceptionally high rates in the month of April and November, which could be due to the boast of the clients’ income resulted from the tax refunds season and the holidays season especially since examining the subscription rate against the consumer price and the consumer confidence indexes, interest rate and unemployment rate shows no relationship between the clients’ behavior and the economic conditions which could be explained further by the natural lag in clients’ reaction to them.
The following scatter plots show the lack of relationship between each economic indicators and the subscription rate. 

The SQL queries used to aggregate and normalize the data can be found here
Subscribed clients’ demographics 
After examining ![overview](https://github.com/user-attachments/assets/6118584f-4f3b-4350-af02-3261fd781fcf)
the data provided about the client’s demographics, it shows that clients who are either married or single have higher chances to invest than those who are divorced as they account for only 12% of the clients who subscribed. As for their profession, higher subscription rate is evident among those in administrative roles, technology or healthcare section as they account for 30%, 26% and 19% of total subscribed clients, respectively. Education-wise, clients with a university degree or graduated high school are more likely to subscribe to deposits as they account for 53% of the grand total. Finally, among all of age groups, clients in their 30s and 40s take up 67% of total subscribed clients.
Subscribed clients’ banking information
The likelihood that clients will subscribe to long-term deposits was analyzed according to their banking information using probability statistics. As the clients’ tenure year increase, the probability of them investing to long-term deposits increase. 
Additionally, clients who obtained a credit card or a personal loan take up 71% and 81% of total clients, respectively, and those who had one or 2 bank products take up 97%. Finally, clients who had a credit score between 550 and 750 and a balance between €100.4K and €125.5K are more likely to invest.
Python code used to calculate probability statistics can be found here.
Optimizing Marketing Efforts
The campaign consisted of three methods to directly contact the clients; phone, email and in branch with a representative from the bank. Analysis shows clients responded equally to the three methods as each method account for about 30% of the subscription rate.
Recommendations
Based on the uncovered insights, the following recommendations have been provided to the marketing team for better designing and executing campaigns to maximize customer subscriptions;
•	Targeted Campaigns for Peak Months:
Focus marketing efforts around April and November, focusing on seasonal rather than economic conditions. Consider offering limited-time incentives or exclusive plans during these months.

•	Segmented Outreach Based on Demographics:
Prioritize outreach to married and single clients, as well as professionals in administrative, tech, and healthcare sectors, since they show higher subscription rates.

•	Banking Product Bundling:
As clients with these products have higher investment tendencies, consider bundling long-term deposits with credit cards and personal loans or offer exclusive benefits, such as lower loan interest rates or cashback rewards for deposit subscribers.

•	Loyalty Incentives for Existing Customers:
Given that subscription likelihood increases with tenure, create a tiered loyalty program that rewards long-term clients with better deposit rates or bonuses for upgrading to long-term deposits.

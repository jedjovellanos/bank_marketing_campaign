# Marketing Campaign Analysis for Bells Fargo Bank
## Table of Contents
- [Business Question](#business-question)
- [Data Source](#data-source)
- [Tools Used](#tools-used)
- [Analysis](#analysis)
- [Insights](#insights)
- [Suggestions](#suggestions)

## Business Question
How can Bells Largo have a greater effectiveness for future marketing campaigns?

## Data source
[UC Irvine Machine Learning Repository Bank Marketing Dataset](https://archive.ics.uci.edu/dataset/222/bank+marketing)

## Tools Used
- **SQL** 
- **MS Excel**
- **PostgreSQL** 
- **Visual Studio Code** 
- **Git & Github** 

## Analysis
1. **How does the success rate of the previous campaign compare to the current campaign?**   
During the previous campaign, 1,511 out of 45,211 clients subscribed to a term deposit, a **3.34%** success rate. The current campaign saw a 250% increase in subscriptions resulting in a success rate of  **11.70%**.

2. **How did the number of times clients were contacted impact the success rate?**   
![Success rate by times contacted](assets\success_rates_contact_freq.png)
*Figure 1: A scatterplot depicting the relationship between success rate and times contacted for each campaign.*

In both campaigns, there did not appear to be a strong positive correlation between the number of times clients were contacted and success rate. As depicted in *Figure 1*, both campaigns saw the most success within 20 calls. With the exception of a few outliers*, any more than 25 calls did not lead to any subscriptions. 

*The instance from the previous campaign with a 50% success rate was due to 1 of 2 clients that was contacted 28 times subscribed to a term deposit.

3. **How did at-risk clients respond to the marketing campaign?**
![Distribution and success rates of at-risk clients](assets\risky_business.png)
*Figure x: Nested bar graph showcasing distribution and success rates of at-risk clients*
The data shows a clear trend: the higher the financial risk posed by the client (i.e., credit in default), the lower their engagement with the campaign. Conversely, clients with lower perceived risk (e.g., housing loans) were more likely to subscribe to term deposits.

4. **What was the success rate by contact type?**
![Success rate by contact type](assets\success_contact_type.png)
*Figure x: Bar graph comparing success rate across contact types.*   
There was not a large difference between the success rate of cellular vs telephone contacts. 14.92% vs 13.42%, respectively.

5. **How did the length of time since previous contact impact success rate?**
![Success rate by days since last contact](assets\success_days.png)
*Figure x: Line graph showing the relationship between success rate and days passed since last contact (up to one year).*   

6. **Is there connections between clients' average yearly balance and success?**
![Balance distribution for successes](assets\balance_success.png)![Balance distribution for failures](assets\balance_failure.png)
*Figure x: Box-and-whisker plots representing the balance distribution for clients that did vs did not sign up for a term deposit.*
The marketing campaign appeared to produce more success with clients that had higher average yearly balances. 


## Insights

## Suggestions
5. **Focus on Moderate-Risk Clients**: Given the low success rate among high-risk clients (credit in default), future campaigns may yield better results by focusing on moderate-risk clients like those with housing loans. They make up the majority of the population and show a stronger response to the campaign.
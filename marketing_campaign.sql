-- Importing the contact table

CREATE TABLE clients (
    client_id VARCHAR(10) PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    marital VARCHAR(15),
    job VARCHAR(30),
    education VARCHAR(30),
    estimated_salary DECIMAL(15,4),
    balance INT,
    credit_score INT,
    products_num INT,
    has_card boolean,
    tenure INT,
    housing_loan VARCHAR(30),
    personal_loan VARCHAR(30),
    subscribed boolean
);

COPY clients(
    client_id,
    age,
    gender,
    marital,
    job,
    education,
    estimated_salary,
    balance,
    credit_score,
    products_num,
    has_card,
    tenure,
    housing_loan,
    personal_loan ,
    subscribed)
FROM 'D:\Documents\Bank analysis\client.csv' 
DELIMITER ',' 
CSV HEADER
ENCODING 'UTF8';

-- Importing the eco_indicators table

CREATE TABLE eco_indicators (
    month VARCHAR(20) PRIMARY KEY,
	campaign_Id VARCHAR(20),
    employment_variance_rate DECIMAL,
    consumer_price_idx DECIMAL,
    consumer_confidence_idx DECIMAL,
    unemployment_rate DECIMAL,
    interest_rate DECIMAL
);

COPY eco_indicators(campaign_Id, 
					month, 
					employment_variance_rate, 
					consumer_price_idx, 
					consumer_confidence_idx, 
					unemployment_rate, 
					interest_rate )
FROM 'D:\Documents\Bank analysis\eco_indicators.csv' 
DELIMITER ',' 
CSV HEADER;


-- Importing the campaign table

CREATE TABLE campaign (
    campaign_Id VARCHAR(20) PRIMARY KEY,
    region VARCHAR(30),
    month VARCHAR(30),
	FOREIGN KEY (month) REFERENCES eco_indicators(month) ON DELETE CASCADE
	
);

COPY campaign(campaign_Id, 
				region, 
				month)
FROM 'D:\Documents\Bank analysis\campaign.csv'
DELIMITER ',' 
CSV HEADER
ENCODING 'LATIN1';


-- Importing the contact table

CREATE TABLE contact (
    contact_id VARCHAR(20) PRIMARY KEY,
    campaign_id VARCHAR(10),
    client_id VARCHAR(10),
    contact_type VARCHAR(20),
    day_of_week VARCHAR(3),
    outcome VARCHAR(10),
	FOREIGN KEY (client_id) REFERENCES clients(client_id) ON DELETE CASCADE,
	FOREIGN KEY (campaign_id) REFERENCES campaign (campaign_id) ON DELETE CASCADE
);

COPY contact (
    contact_id,
    campaign_id,
    client_id,
    contact_type,
    day_of_week,
    outcome)
FROM 'D:\Documents\Bank analysis\contact.csv' 
DELIMITER ',' 
CSV HEADER
ENCODING 'UTF8';

-- Calculating Total Subscribed Customers and Subscription Rate
SELECT
	c.campaign_id,
	c.month,
	c.region,
	SUM(CASE WHEN cl.subscribed = 'Yes' THEN 1 ELSE 0 END) AS subscribed_customers,
	ROUND(
	      100.0 * SUM(CASE WHEN cl.subscribed = 'Yes' THEN 1 ELSE 0 END) 
		  / COUNT(ct.contact_id), 2) AS subscription_rate
FROM campaign c
JOIN contact ct 
	ON c.campaign_id = ct.campaign_id
JOIN clients cl 
	ON cl.client_id = ct.client_id
GROUP BY c.campaign_id, c.month, c.region
ORDER BY subscription_rate

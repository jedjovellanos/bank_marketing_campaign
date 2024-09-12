CREATE TABLE clients (
    age INT,
    job VARCHAR(50),        -- type of job
    marital VARCHAR(20),    -- marital status
    education VARCHAR(30),  -- education status
    has_credit CHAR(3),     -- client has credit in default?
    balance INT,            -- avg yearly balance
    has_housing CHAR(3),    -- client has housing loan?
    has_loan CHAR(3),       -- client has personal loan?
    contact VARCHAR(15),    -- contact type (cellular or telephone)
    day INT,                -- last contact day of the week
    month VARCHAR(3),       -- last contact month of the year
    duration INT,           -- last contact duration in seconds
    campaign INT,           -- number of contacts performed during campaign
    pdays INT,              -- number of days passed since client was last contacted
                                -- (-1 means client wasn't previously contacted)
    previous INT,           -- number of contacts performed for client before this campaign 
    poutcome VARCHAR(20),   -- outcome of previous marketing campaign
    deposit CHAR(3)         -- has client subscribed a term deposit?
);

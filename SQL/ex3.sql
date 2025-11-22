USE review_app;

-- Simple INSERT INTO with values
INSERT INTO Users (username, userPassword)
VALUES ('alice', 'password123');

INSERT INTO GeneralUser (username, fName, lName)
VALUES ('alice', 'Alice', 'Smith');

INSERT INTO Company (companyName, industry)
VALUES ('Nvidia', 'Software');

INSERT INTO Product (productName, category, productCost, releaseDate, companyID, description)
VALUES ('RTX 3080', 'Graphics', 1499.99, '2025-11-21', 1, 'Powerful GPU');

INSERT INTO Review (userID, productID, rating, description)
VALUES ('alice', 1, 5, 'Amazing Product!');

-- INSERT INTO ... SELECT
INSERT INTO Users (username, userPassword)
SELECT CONCAT(username, '_VIP'), userPassword
FROM Users;

INSERT INTO GeneralUser (username, fName, lName)
SELECT CONCAT(username, '_VIP'), fName, CONCAT(lName, '-VIP')
FROM GeneralUser;

-- INSERT INTO ... SELECT ... WHERE
INSERT INTO Users (username, userPassword)
SELECT CONCAT(username, '_2'), userPassword
FROM Users
WHERE username = 'alice';

INSERT INTO GeneralUser (username, fName, lName)
SELECT CONCAT(username, '_2'), fName, lName
FROM GeneralUser
WHERE username = 'alice';

INSERT INTO Product (productName, category, productCost, releaseDate, companyID, description)
SELECT 'RTX 3090', 'Graphics', 1999.99, '2025-12-01', companyID, 'Even more powerful GPU'
FROM Company
WHERE companyID = 1;

INSERT INTO Review (userID, productID, rating, description)
SELECT 'alice_2', productID, 4, 'Very good GPU, but expensive!'
FROM Product
WHERE productName = 'RTX 3090';

-- Show results
SELECT * FROM Users;
SELECT * FROM GeneralUser;
SELECT * FROM Product;
SELECT * FROM Review;

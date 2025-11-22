USE review_app;

-- Query 1: Standard
SELECT reviewID, userID, productID, rating, description
FROM Review
WHERE rating = 1;

-- Query 2: JOIN  #########
SELECT r.reviewID, r.userID, r.productID, r.rating
FROM Review r
JOIN Product p ON r.productID = p.productID
JOIN Company c ON p.companyID = c.companyID
WHERE c.companyName = 'QualityTech Group';

-- Query 3: Subquery
SELECT productID, productName
FROM Product
WHERE productID IN (
    SELECT productID
    FROM Review
    GROUP BY productID
    HAVING AVG(rating) > 4
);

-- Query 4: Group By
SELECT p.productName, AVG(r.rating) AS avg_rating
FROM Product p
JOIN Review r ON p.productID = r.productID
GROUP BY p.productName
HAVING AVG(r.rating) >= 4;

-- Query 5: JOIN and Filter
SELECT rr.reportEntryID, rr.username, rr.reviewID, rr.report_reason, rr.filed_time
FROM ReviewReport rr
WHERE rr.filed_time >= NOW() - INTERVAL 3 MONTH;

-- Query 6: Exists
SELECT au.username, au.role
FROM AdminUser au
WHERE EXISTS (
    SELECT 1
    FROM Report r
    WHERE r.adminUsername = au.username
);

-- Query 7: Distinct
SELECT DISTINCT gu.username, gu.fName, gu.lName
FROM GeneralUser gu
JOIN Review r ON gu.username = r.userID
JOIN Product p ON r.productID = p.productID
WHERE p.category = 'Electronics';
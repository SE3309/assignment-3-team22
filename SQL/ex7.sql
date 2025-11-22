USE review_app;

-- View 1: Average rating per product
CREATE VIEW AvgProductRating AS
SELECT p.productID, p.productName, AVG(r.rating) AS avg_rating
FROM Product p
JOIN Review r ON p.productID = r.productID
GROUP BY p.productID, p.productName;

-- Query the view
SELECT * FROM AvgProductRating
WHERE avg_rating >= 4
LIMIT 5;

-- Attempt to insert into the view
INSERT INTO AvgProductRating (productID, productName, avg_rating)
VALUES (999, 'Fake Product', 5.0);

-- View 2: Reports handled by admins
CREATE VIEW AdminReports AS
SELECT reportID, reportType, adminUsername, status, description
FROM Report
WHERE adminUsername IS NOT NULL;

-- Query the view
SELECT * FROM AdminReports
LIMIT 5;

-- Attempt to update the view
UPDATE AdminReports
SET status = 'Resolved'
WHERE reportID = 22;
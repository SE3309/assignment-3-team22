USE review_app;

-- 1. INSERT the result of a query
INSERT INTO Report (reportType, description, adminUsername)
SELECT 'Low Rating', CONCAT('Auto-generated report for review ', reviewID), 'vincent.coleman451'
FROM Review
WHERE rating < 2;

-- 2. UPDATE multiple tuples
UPDATE Product
SET productCost = productCost * 1.10
WHERE category = 'Electronics';

-- 3. DELETE over certain age
DELETE FROM ReviewReport
WHERE filed_time < NOW() - INTERVAL 6 MONTH;
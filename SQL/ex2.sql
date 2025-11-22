CREATE SCHEMA review_app;
USE review_app;

CREATE TABLE Users (
    username VARCHAR(50) PRIMARY KEY,
    userPassword VARCHAR(255) NOT NULL
);
DESCRIBE Users;

CREATE TABLE GeneralUser (
    username VARCHAR(50) PRIMARY KEY,
    fName VARCHAR(50),
    lName VARCHAR(50),
    FOREIGN KEY (username) REFERENCES Users(username)
        ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE GeneralUser;

CREATE TABLE Company (
    companyID INT AUTO_INCREMENT PRIMARY KEY,
    companyName VARCHAR(255) NOT NULL,
    industry VARCHAR(50) NOT NULL
);
DESCRIBE Company;

CREATE TABLE CompanyUser (
    username VARCHAR(50) PRIMARY KEY,
    companyID INT NOT NULL,
    fName VARCHAR(50) NOT NULL,
    lName VARCHAR(50) NOT NULL,
    FOREIGN KEY (username) REFERENCES Users(username)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (companyID) REFERENCES Company(companyID)
        ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE CompanyUser;

CREATE TABLE AdminUser (
    username VARCHAR(50) PRIMARY KEY,
    role VARCHAR(50) NOT NULL,
    FOREIGN KEY (username) REFERENCES Users(username)
        ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE AdminUser;

CREATE TABLE Product (
    productID INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    productCost DECIMAL(10,2) DEFAULT 0.00,
    releaseDate DATE NOT NULL,
    companyID INT NOT NULL,
    description TEXT NOT NULL,
    FOREIGN KEY (companyID) REFERENCES Company(companyID)
        ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE Product;

CREATE TABLE Review (
    reviewID INT AUTO_INCREMENT PRIMARY KEY,
    userID VARCHAR(50) NOT NULL,
    productID INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    description TEXT,
    FOREIGN KEY (productID) REFERENCES Product(productID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (userID) REFERENCES GeneralUser(username)
        ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE Review;

CREATE TABLE Report (
    reportID INT AUTO_INCREMENT PRIMARY KEY,
    reportType VARCHAR(50) NOT NULL,
    description TEXT,
    status VARCHAR(50) DEFAULT 'Pending',
    adminUsername VARCHAR(50),  -- optional, if an admin handles it
    FOREIGN KEY (adminUsername) REFERENCES AdminUser(username)
        ON DELETE SET NULL
);
DESCRIBE Report;

CREATE TABLE ReviewReport (
    reportEntryID INT AUTO_INCREMENT PRIMARY KEY,
    reportID INT NOT NULL,
    reviewID INT NOT NULL,
    username VARCHAR(50) NOT NULL,
    filed_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    report_reason VARCHAR(255) NOT NULL,
    FOREIGN KEY (reportID) REFERENCES Report(reportID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (reviewID) REFERENCES Review(reviewID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (username) REFERENCES GeneralUser(username)
        ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE ReviewReport;

CREATE TABLE VerificationReport (
    verificationID INT AUTO_INCREMENT PRIMARY KEY,
    status VARCHAR(50) DEFAULT 'Pending',
    description TEXT,
    adminUsername VARCHAR(50),
    FOREIGN KEY (adminUsername) REFERENCES AdminUser(username)
        ON DELETE SET NULL
);
DESCRIBE VerificationReport;

CREATE TABLE ReviewVerification (
    verificationID INT NOT NULL,
    reviewID INT NOT NULL,
    username VARCHAR(50) NOT NULL,
    time_requested DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (verificationID, reviewID, username),
    FOREIGN KEY (verificationID) REFERENCES VerificationReport(verificationID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (reviewID) REFERENCES Review(reviewID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (username) REFERENCES GeneralUser(username)
        ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE ReviewVerification;

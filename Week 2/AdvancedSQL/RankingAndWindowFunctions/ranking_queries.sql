-- Create the Products table
CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Products VALUES
(1, 'iPhone 14', 'Electronics', 799.00),
(2, 'Samsung Galaxy S22', 'Electronics', 699.00),
(3, 'MacBook Pro', 'Electronics', 1299.00),
(4, 'Bluetooth Speaker', 'Electronics', 199.00),
(5, 'Office Chair', 'Furniture', 150.00),
(6, 'Wooden Desk', 'Furniture', 300.00),
(7, 'Bookshelf', 'Furniture', 180.00),
(8, 'Running Shoes', 'Footwear', 120.00),
(9, 'Sneakers', 'Footwear', 150.00),
(10, 'Sandals', 'Footwear', 90.00);

-- 1. Use ROW_NUMBER() to assign unique rank per category
SELECT ProductName, Category, Price,
       ROW_NUMBER() OVER (PARTITION BY Category ORDER BY Price DESC) AS RowNum
FROM Products;

-- 2. Use RANK() to handle ties (skips next ranks)
SELECT ProductName, Category, Price,
       RANK() OVER (PARTITION BY Category ORDER BY Price DESC) AS RankInCategory
FROM Products;

-- 3. Use DENSE_RANK() to handle ties (no skips)
SELECT ProductName, Category, Price,
       DENSE_RANK() OVER (PARTITION BY Category ORDER BY Price DESC) AS DenseRankInCategory
FROM Products;

-- Optional: Get top 3 products per category by price using ROW_NUMBER
SELECT *
FROM (
    SELECT ProductName, Category, Price,
           ROW_NUMBER() OVER (PARTITION BY Category ORDER BY Price DESC) AS RowNum
    FROM Products
) AS RankedProducts
WHERE RowNum <= 3;

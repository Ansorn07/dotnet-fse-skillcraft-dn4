# 🧮 Advanced SQL – Ranking and Window Functions

This exercise demonstrates how to use SQL window functions to rank products by price within their respective categories.

## 🛒 Scenario: Online Retail Store

You work on a retail analytics platform and are asked to identify the **top 3 most expensive products** in each product category. You are to compare how different ranking functions behave.

## 📌 SQL Functions Used
- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`
- `OVER(PARTITION BY Category ORDER BY Price DESC)`

## 💡 What You’ll Learn
| Function       | Description                                                |
|----------------|------------------------------------------------------------|
| `ROW_NUMBER()` | Assigns a unique row number to each row in a partition     |
| `RANK()`       | Gives the same rank to ties but skips the next rank        |
| `DENSE_RANK()` | Gives the same rank to ties and doesn’t skip subsequent ones |

## 📊 Sample Query
```sql
SELECT ProductName, Category, Price,
       ROW_NUMBER() OVER (PARTITION BY Category ORDER BY Price DESC) AS RowNum
FROM Products;

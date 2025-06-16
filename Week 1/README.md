# 📘 Week 1 – Design Patterns & Data Structures

This folder contains the mandatory hands-on exercises for Week 1 of the DotNet FSE Deep Skilling Program. The focus this week is on mastering key **object-oriented design patterns** and implementing **fundamental search algorithms** used in real-world applications.

---

## 📂 Design Principles & Patterns

### 🔹 Singleton Pattern – `SingletonPatternExample`
- Implements the **Singleton Design Pattern** in Java.
- Ensures that only one instance of a `Logger` class is created and reused throughout the app.
- Useful in logging, configuration, or driver management.

**Key Concepts:**
- Private constructor
- Static instance
- Thread-safe access to instance

📄 [View Code](./Design%20principles%20%26%20Patterns/SingletonPatternExample/src)

---

### 🔹 Factory Method Pattern – `FactoryMethodPatternExample`
- Implements the **Factory Method Pattern** to create different types of documents (Word, PDF, Excel).
- Decouples object creation logic from the client code.

**Key Concepts:**
- Common interface `Document`
- Concrete document types: `WordDocument`, `PdfDocument`, `ExcelDocument`
- Factory classes to generate the objects

📄 [View Code](./Design%20principles%20%26%20Patterns/FactoryMethodPatternExample/src)

---

## 📂 Data Structures & Algorithms

### 🔹 Search Comparison – `SearchComparison`
- Implements and compares **Linear Search** vs **Binary Search**.
- Simulates an **e-commerce product search** system.

**Key Concepts:**
- `Product` class with `productId`, `productName`, and `category`
- Performance comparison: O(n) vs O(log n)

📄 [View Code](./DSA/SearchComparison)

---

### 🔹 Financial Forecasting – `FinancialForecasting`
- Implements a **recursive algorithm** to forecast future financial values based on growth rate.
- Introduces recursion and optimization techniques.

**Key Concepts:**
- Recursive function to compute future value
- Time complexity of recursion
- Memoization as an optimization

📄 [View Code](./DSA/FinancialForecasting)

---

## ✅ Summary

| Category       | Topics Covered                                  |
|----------------|--------------------------------------------------|
| Design Patterns| Singleton, Factory Method                        |
| Algorithms     | Linear Search, Binary Search, Recursion          |
| Language Used  | Java                                              |

> 🧠 All hands-on implementations are structured, commented, and interview-ready.

---

📌 **Author:** [Ansorn07](https://github.com/Ansorn07)  
📅 **Week:** 1  
📁 **Module:** Design Principles, Patterns, and DSA  

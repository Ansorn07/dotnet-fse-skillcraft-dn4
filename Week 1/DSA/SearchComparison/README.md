# Week 1 - DSA Exercise 2: E-commerce Platform Search Function

## 🧠 Objective
To implement and compare **Linear Search** and **Binary Search** algorithms on an e-commerce product list using Java. The goal is to understand efficiency and use-cases for each algorithm.

---

## 📁 Project Structure

SearchComparison/
├── Product.java
├── SearchDemo.java
└── README.md


---

## 💡 Concepts Covered

### 📌 Big O Notation (Asymptotic Notation)
Big O notation describes the **upper bound** of an algorithm’s runtime as input size grows.

| Algorithm        | Best Case | Average Case | Worst Case |
|------------------|-----------|---------------|-------------|
| Linear Search    | O(1)      | O(n)         | O(n)        |
| Binary Search    | O(1)      | O(log n)     | O(log n)    |

✅ **Binary Search** is faster, but only works on **sorted data**.

---

## 🛠️ Technologies Used

- Java
- Arrays
- Comparator
- Time Measurement (nanoTime)

---

## 🧪 How to Run


javac *.java

java SearchDemo


✅ Sample Output

Linear Search: 2 - Camera (Electronics)

Time: 12800 ns

Binary Search: 2 - Camera (Electronics)

Time: 4200 ns
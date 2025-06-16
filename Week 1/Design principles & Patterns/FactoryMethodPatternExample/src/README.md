# Week 1 - Factory Method Pattern (Java)

## 🧠 Objective
To implement the Factory Method Design Pattern in Java for a document management system that dynamically creates different document types (Word, PDF, Excel) using factories.

---

## 📁 Project Structure

FactoryMethodPatternExample/
└── src/
├── Document.java
├── WordDocument.java
├── PdfDocument.java
├── ExcelDocument.java
├── DocumentFactory.java
├── WordFactory.java
├── PdfFactory.java
├── ExcelFactory.java
└── Main.java


---

## 💡 What is the Factory Method Pattern?

The **Factory Method Pattern** defines an interface for creating an object, but lets subclasses decide which class to instantiate.

This allows the code to be:
- **Extensible**: Add new document types without changing existing code.
- **Decoupled**: Creator classes don’t need to know which specific class they are instantiating.

---

## 🛠️ Technologies Used

- Java
- Object-Oriented Programming
- Factory Method Design Pattern

---

## 📦 Design Summary

- `Document`: Interface implemented by all document types.
- `WordDocument`, `PdfDocument`, `ExcelDocument`: Implementations of `Document`.
- `DocumentFactory`: Abstract class declaring `createDocument()` method.
- `WordFactory`, `PdfFactory`, `ExcelFactory`: Concrete factories that create specific documents.
- `Main`: Test class demonstrating dynamic creation.

---

## 🧪 How to Run


cd src
javac *.java
java Main

✅  Output

Opening Word document.
Opening PDF document.
Opening Excel document.

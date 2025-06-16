# Week 1 - Singleton Pattern (Java)

## 🧠 Objective
To implement the Singleton Design Pattern in Java, ensuring that a logging utility class has only one instance throughout the application lifecycle for consistent logging.

---

## 📁 Project Structure

SingletonPatternExample/
└── src/
├── Logger.java
└── Main.java

yaml
Copy
Edit

---

## 💡 What is the Singleton Pattern?

The **Singleton Design Pattern** ensures a class has **only one instance** and provides a global point of access to it.  
It is often used for logging, configuration, or caching where having multiple instances would cause conflicts or redundancy.

### 🔑 Key Characteristics:
- Private constructor to prevent external instantiation.
- Static instance held within the class.
- Public static method to return the instance (with lazy initialization).

---

## 🛠️ Technologies Used

- Java
- Object-Oriented Programming
- Design Patterns

---

## 🧪 How to Run

```bash
cd src
javac *.java
java Main



✅ Output:
sql
Copy
Edit
Logger instance created
Using the same Logger instance
LOG: Singleton pattern in action.
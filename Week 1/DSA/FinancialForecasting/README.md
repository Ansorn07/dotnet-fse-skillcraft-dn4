# Week 1 - DSA Exercise 7: Financial Forecasting (Recursion)

## 📘 Objective
Build a recursive algorithm that predicts future financial value based on current value and annual growth rate.

---

## 💡 Problem Statement

We need to forecast the **future value** of an investment using **recursive programming**. The tool multiplies the current value with a fixed **growth rate** each year.

---

## 💻 Code Structure

### `Forecast.java`
```java
public class Forecast {
    public static double predictFutureValue(double currentValue, double growthRate, int years) {
        if (years == 0) {
            return currentValue;
        }
        return predictFutureValue(currentValue * (1 + growthRate), growthRate, years - 1);
    }

    public static void main(String[] args) {
        double currentValue = 1000.0;
        double growthRate = 0.1;
        int years = 5;

        double futureValue = predictFutureValue(currentValue, growthRate, years);
        System.out.printf("Predicted future value after %d years: %.2f%n", years, futureValue);
    }
}


📊 Sample Output

Predicted future value after 5 years: 1610.51
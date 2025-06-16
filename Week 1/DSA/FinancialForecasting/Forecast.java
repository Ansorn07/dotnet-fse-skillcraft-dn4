public class Forecast {

    // Recursive method to calculate future value
    public static double predictFutureValue(double currentValue, double growthRate, int years) {
        // Base case
        if (years == 0) {
            return currentValue;
        }

        // Recursive case
        return predictFutureValue(currentValue * (1 + growthRate), growthRate, years - 1);
    }

    public static void main(String[] args) {
        double currentValue = 1000.0;
        double growthRate = 0.1; // 10%
        int years = 5;

        double futureValue = predictFutureValue(currentValue, growthRate, years);
        System.out.printf("Predicted future value after %d years: %.2f%n", years, futureValue);
    }
}

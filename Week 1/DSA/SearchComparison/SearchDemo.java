import java.util.*;

public class SearchDemo {

    public static Product linearSearch(Product[] products, String name) {
        for (Product p : products) {
            if (p.productName.equalsIgnoreCase(name)) {
                return p;
            }
        }
        return null;
    }

    public static Product binarySearch(Product[] products, String name) {
        int left = 0, right = products.length - 1;
        while (left <= right) {
            int mid = (left + right) / 2;
            int cmp = products[mid].productName.compareToIgnoreCase(name);
            if (cmp == 0) return products[mid];
            else if (cmp < 0) left = mid + 1;
            else right = mid - 1;
        }
        return null;
    }

    public static void main(String[] args) {
        Product[] products = {
            new Product(1, "Laptop", "Electronics"),
            new Product(2, "Camera", "Electronics"),
            new Product(3, "Shoes", "Fashion"),
            new Product(4, "Watch", "Accessories"),
            new Product(5, "Phone", "Electronics")
        };

        Arrays.sort(products, Comparator.comparing(p -> p.productName.toLowerCase()));

        String searchName = "Camera";

        long start, end;

        start = System.nanoTime();
        Product linearResult = linearSearch(products, searchName);
        end = System.nanoTime();
        System.out.println("Linear Search: " + (linearResult != null ? linearResult : "Not Found"));
        System.out.println("Time: " + (end - start) + " ns");

        start = System.nanoTime();
        Product binaryResult = binarySearch(products, searchName);
        end = System.nanoTime();
        System.out.println("Binary Search: " + (binaryResult != null ? binaryResult : "Not Found"));
        System.out.println("Time: " + (end - start) + " ns");
    }
}

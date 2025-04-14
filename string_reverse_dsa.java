// String Manipulation: Reverse a String
import java.util.Scanner;

public class string_reverse_dsa {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String str = scanner.nextLine();
        String reversed = new StringBuilder(str).reverse().toString();
        System.out.println("Reversed String: " + reversed);
        scanner.close();
    }
}

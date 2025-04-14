// Program 1: Reverse a String
import java.util.Scanner;

public class ReverseString {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String original = scanner.nextLine();
        String reversed = new StringBuilder(original).reverse().toString();
        System.out.println("Reversed string: " + reversed);
        scanner.close();
    }
}

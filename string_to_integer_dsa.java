// String Manipulation: Convert a String to an Integer (Implement atoi)
import java.util.Scanner;

public class string_to_integer_dsa {
    public static int myAtoi(String str) {
        str = str.trim();
        if (str.isEmpty()) {
            return 0;
        }
        int sign = 1, i = 0, result = 0;
        if (str.charAt(i) == '-') {
            sign = -1;
            i++;
        } else if (str.charAt(i) == '+') {
            i++;
        }
        while (i < str.length() && Character.isDigit(str.charAt(i))) {
            result = result * 10 + (str.charAt(i) - '0');
            i++;
        }
        return sign * result;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String str = scanner.nextLine();
        System.out.println("Converted Integer: " + myAtoi(str));
        scanner.close();
    }
}

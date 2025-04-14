// String Manipulation: Implement strstr() Function (Substring Search)
import java.util.Scanner;

public class implement_strstr_dsa {
    public static int strstr(String haystack, String needle) {
        if (needle.length() == 0) {
            return 0;
        }
        for (int i = 0; i <= haystack.length() - needle.length(); i++) {
            if (haystack.substring(i, i + needle.length()).equals(needle)) {
                return i;
            }
        }
        return -1;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the haystack string: ");
        String haystack = scanner.nextLine();
        System.out.print("Enter the needle string: ");
        String needle = scanner.nextLine();
        int result = strstr(haystack, needle);
        if (result != -1) {
            System.out.println("Substring found at index: " + result);
        } else {
            System.out.println("Substring not found.");
        }
        scanner.close();
    }
}

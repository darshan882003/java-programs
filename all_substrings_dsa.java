// String Manipulation: Generate All Possible Substrings of a String
import java.util.Scanner;

public class all_substrings_dsa {
    public static void generateSubstrings(String str) {
        for (int i = 0; i < str.length(); i++) {
            for (int j = i + 1; j <= str.length(); j++) {
                System.out.println(str.substring(i, j));
            }
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String str = scanner.nextLine();
        generateSubstrings(str);
        scanner.close();
    }
}

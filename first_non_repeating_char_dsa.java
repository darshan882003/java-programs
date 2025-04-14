// String Manipulation: Find the First Non-Repeating Character in a String
import java.util.Scanner;
import java.util.HashMap;

public class first_non_repeating_char_dsa {
    public static char firstNonRepeatingChar(String str) {
        HashMap<Character, Integer> map = new HashMap<>();
        for (char c : str.toCharArray()) {
            map.put(c, map.getOrDefault(c, 0) + 1);
        }
        for (char c : str.toCharArray()) {
            if (map.get(c) == 1) {
                return c;
            }
        }
        return '\0'; // If no non-repeating character
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String str = scanner.nextLine();
        char result = firstNonRepeatingChar(str);
        if (result != '\0') {
            System.out.println("First non-repeating character: " + result);
        } else {
            System.out.println("No non-repeating character found.");
        }
        scanner.close();
    }
}

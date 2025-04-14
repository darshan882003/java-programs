// Program 5: Remove Duplicate Characters from a String
import java.util.LinkedHashSet;
import java.util.Scanner;
import java.util.Set;

public class RemoveDuplicates {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String input = scanner.nextLine();
        Set<Character> set = new LinkedHashSet<>();
        for (char c : input.toCharArray()) {
            set.add(c);
        }
        StringBuilder result = new StringBuilder();
        for (char c : set) {
            result.append(c);
        }
        System.out.println("String after removing duplicates: " + result.toString());
        scanner.close();
    }
}

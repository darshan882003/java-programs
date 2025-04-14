// String Manipulation: Count the Frequency of Each Character in a String
import java.util.Scanner;
import java.util.HashMap;

public class string_frequency_dsa {
    public static void countFrequency(String str) {
        HashMap<Character, Integer> map = new HashMap<>();
        for (char c : str.toCharArray()) {
            map.put(c, map.getOrDefault(c, 0) + 1);
        }
        for (char c : map.keySet()) {
            System.out.println(c + ": " + map.get(c));
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String str = scanner.nextLine();
        countFrequency(str);
        scanner.close();
    }
}

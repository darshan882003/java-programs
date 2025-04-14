# 


cat > string_reverse_dsa.java <<EOF
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
EOF

cat > string_palindrome_dsa.java <<EOF
// String Manipulation: Check if a String is a Palindrome
import java.util.Scanner;

public class string_palindrome_dsa {
    public static boolean isPalindrome(String str) {
        int left = 0, right = str.length() - 1;
        while (left < right) {
            if (str.charAt(left) != str.charAt(right)) {
                return false;
            }
            left++;
            right--;
        }
        return true;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String str = scanner.nextLine();
        if (isPalindrome(str)) {
            System.out.println("The string is a palindrome.");
        } else {
            System.out.println("The string is not a palindrome.");
        }
        scanner.close();
    }
}
EOF

cat > first_non_repeating_char_dsa.java <<EOF
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
EOF

cat > string_frequency_dsa.java <<EOF
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
EOF

cat > string_anagram_check_dsa.java <<EOF
// String Manipulation: Check if Two Strings are Anagrams of Each Other
import java.util.Scanner;
import java.util.Arrays;

public class string_anagram_check_dsa {
    public static boolean areAnagrams(String str1, String str2) {
        if (str1.length() != str2.length()) {
            return false;
        }
        char[] arr1 = str1.toCharArray();
        char[] arr2 = str2.toCharArray();
        Arrays.sort(arr1);
        Arrays.sort(arr2);
        return Arrays.equals(arr1, arr2);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter first string: ");
        String str1 = scanner.nextLine();
        System.out.print("Enter second string: ");
        String str2 = scanner.nextLine();
        if (areAnagrams(str1, str2)) {
            System.out.println("The strings are anagrams.");
        } else {
            System.out.println("The strings are not anagrams.");
        }
        scanner.close();
    }
}
EOF

cat > implement_strstr_dsa.java <<EOF
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
EOF

cat > longest_common_prefix_dsa.java <<EOF
// String Manipulation: Find the Longest Common Prefix Among a Set of Strings
import java.util.Scanner;

public class longest_common_prefix_dsa {
    public static String longestCommonPrefix(String[] strs) {
        if (strs == null || strs.length == 0) {
            return "";
        }
        String prefix = strs[0];
        for (int i = 1; i < strs.length; i++) {
            while (strs[i].indexOf(prefix) != 0) {
                prefix = prefix.substring(0, prefix.length() - 1);
                if (prefix.isEmpty()) {
                    return "";
                }
            }
        }
        return prefix;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of strings: ");
        int n = scanner.nextInt();
        scanner.nextLine();  // Consume the newline character
        String[] strs = new String[n];
        System.out.println("Enter " + n + " strings:");
        for (int i = 0; i < n; i++) {
            strs[i] = scanner.nextLine();
        }
        System.out.println("Longest Common Prefix: " + longestCommonPrefix(strs));
        scanner.close();
    }
}
EOF

cat > string_to_integer_dsa.java <<EOF
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
EOF

cat > all_substrings_dsa.java <<EOF
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
EOF

cat > regex_matching_dsa.java <<EOF
// String Manipulation: Implement Regular Expression Matching with Support for '.' and '*'
public class regex_matching_dsa {
    public static boolean isMatch(String s, String p) {
        if (p.isEmpty()) {
            return s.isEmpty();
        }
        boolean first_match = (!s.isEmpty() && (p.charAt(0) == s.charAt(0) || p.charAt(0) == '.'));
        if (p.length() >= 2 && p.charAt(1) == '*') {
            return (isMatch(s, p.substring(2)) || (first_match && isMatch(s.substring(1), p)));
        } else {
            return first_match && isMatch(s.substring(1), p.substring(1));
        }
    }

    public static void main(String[] args) {
        String s = "aa";
        String p = "a*";
        System.out.println("Regex match result: " + isMatch(s, p));
    }
}
EOF

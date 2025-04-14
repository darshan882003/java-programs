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

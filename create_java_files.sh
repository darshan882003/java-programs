# #!/bin/bash

# # 1. Hello World Program
# cat > HelloWorld.java <<EOF
# public class HelloWorld {
#     public static void main(String[] args) {
#         System.out.println("Hello, World!");
#     }
# }
# EOF

# # 2. Addition of Two Numbers
# cat > AddTwoNumbers.java <<EOF
# import java.util.Scanner;

# public class AddTwoNumbers {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter first number: ");
#         int num1 = scanner.nextInt();
#         System.out.print("Enter second number: ");
#         int num2 = scanner.nextInt();
#         int sum = num1 + num2;
#         System.out.println("Sum: " + sum);
#         scanner.close();
#     }
# }
# EOF

# # 3. Subtraction of Two Numbers
# cat > SubtractTwoNumbers.java <<EOF
# import java.util.Scanner;

# public class SubtractTwoNumbers {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter first number: ");
#         int num1 = scanner.nextInt();
#         System.out.print("Enter second number: ");
#         int num2 = scanner.nextInt();
#         int difference = num1 - num2;
#         System.out.println("Difference: " + difference);
#         scanner.close();
#     }
# }
# EOF

# # 4. Multiplication of Two Numbers
# cat > MultiplyTwoNumbers.java <<EOF
# import java.util.Scanner;

# public class MultiplyTwoNumbers {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter first number: ");
#         int num1 = scanner.nextInt();
#         System.out.print("Enter second number: ");
#         int num2 = scanner.nextInt();
#         int product = num1 * num2;
#         System.out.println("Product: " + product);
#         scanner.close();
#     }
# }
# EOF

# # 5. Division of Two Numbers
# cat > DivideTwoNumbers.java <<EOF
# import java.util.Scanner;

# public class DivideTwoNumbers {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter dividend: ");
#         int dividend = scanner.nextInt();
#         System.out.print("Enter divisor: ");
#         int divisor = scanner.nextInt();
#         if (divisor != 0) {
#             int quotient = dividend / divisor;
#             System.out.println("Quotient: " + quotient);
#         } else {
#             System.out.println("Division by zero is not allowed.");
#         }
#         scanner.close();
#     }
# }
# EOF

# # Add more programs as needed following the same pattern

#!/bin/bash

# 6. Calculate the Area of a Circle
# cat > AreaOfCircle.java <<EOF
# // 6. Calculate the Area of a Circle
# import java.util.Scanner;

# public class AreaOfCircle {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter radius: ");
#         double radius = scanner.nextDouble();
#         double area = Math.PI * radius * radius;
#         System.out.println("Area of Circle: " + area);
#         scanner.close();
#     }
# }
# EOF

# # 7. Calculate the Area of a Rectangle
# cat > AreaOfRectangle.java <<EOF
# // 7. Calculate the Area of a Rectangle
# import java.util.Scanner;

# public class AreaOfRectangle {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter length: ");
#         double length = scanner.nextDouble();
#         System.out.print("Enter width: ");
#         double width = scanner.nextDouble();
#         double area = length * width;
#         System.out.println("Area of Rectangle: " + area);
#         scanner.close();
#     }
# }
# EOF

# # 8. Calculate the Area of a Triangle
# cat > AreaOfTriangle.java <<EOF
# // 8. Calculate the Area of a Triangle
# import java.util.Scanner;

# public class AreaOfTriangle {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter base: ");
#         double base = scanner.nextDouble();
#         System.out.print("Enter height: ");
#         double height = scanner.nextDouble();
#         double area = 0.5 * base * height;
#         System.out.println("Area of Triangle: " + area);
#         scanner.close();
#     }
# }
# EOF

# # 9. Calculate Simple Interest
# cat > SimpleInterest.java <<EOF
# // 9. Calculate Simple Interest
# import java.util.Scanner;

# public class SimpleInterest {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter principal: ");
#         double principal = scanner.nextDouble();
#         System.out.print("Enter rate of interest: ");
#         double rate = scanner.nextDouble();
#         System.out.print("Enter time (in years): ");
#         double time = scanner.nextDouble();
#         double interest = (principal * rate * time) / 100;
#         System.out.println("Simple Interest: " + interest);
#         scanner.close();
#     }
# }
# EOF

# # 10. Calculate Compound Interest
# cat > CompoundInterest.java <<EOF
# // 10. Calculate Compound Interest
# import java.util.Scanner;

# public class CompoundInterest {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter principal: ");
#         double principal = scanner.nextDouble();
#         System.out.print("Enter rate of interest: ");
#         double rate = scanner.nextDouble();
#         System.out.print("Enter time (in years): ");
#         double time = scanner.nextDouble();
#         double amount = principal * Math.pow((1 + rate / 100), time);
#         double interest = amount - principal;
#         System.out.println("Compound Interest: " + interest);
#         scanner.close();
#     }
# }
# EOF




#!/bin/bash

# 11. Check Even or Odd Number
# cat > EvenOrOdd.java <<EOF
# // 11. Check Even or Odd Number
# import java.util.Scanner;

# public class EvenOrOdd {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter a number: ");
#         int num = scanner.nextInt();
#         if (num % 2 == 0)
#             System.out.println(num + " is Even");
#         else
#             System.out.println(num + " is Odd");
#         scanner.close();
#     }
# }
# EOF

# # 12. Check Leap Year
# cat > LeapYear.java <<EOF
# // 12. Check Leap Year
# import java.util.Scanner;

# public class LeapYear {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter a year: ");
#         int year = scanner.nextInt();
#         if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0))
#             System.out.println(year + " is a Leap Year");
#         else
#             System.out.println(year + " is not a Leap Year");
#         scanner.close();
#     }
# }
# EOF

# # 13. Find Factorial of a Number
# cat > Factorial.java <<EOF
# // 13. Find Factorial of a Number
# import java.util.Scanner;

# public class Factorial {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter a number: ");
#         int num = scanner.nextInt();
#         long factorial = 1;
#         for (int i = 1; i <= num; i++) {
#             factorial *= i;
#         }
#         System.out.println("Factorial: " + factorial);
#         scanner.close();
#     }
# }
# EOF

# # 14. Generate Multiplication Table
# cat > MultiplicationTable.java <<EOF
# // 14. Generate Multiplication Table
# import java.util.Scanner;

# public class MultiplicationTable {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter a number: ");
#         int num = scanner.nextInt();
#         for (int i = 1; i <= 10; i++) {
#             System.out.println(num + " x " + i + " = " + (num * i));
#         }
#         scanner.close();
#     }
# }
# EOF

# # 15. Find GCD (Greatest Common Divisor) of Two Numbers
# cat > GCD.java <<EOF
# // 15. Find GCD (Greatest Common Divisor) of Two Numbers
# import java.util.Scanner;

# public class GCD {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter first number: ");
#         int a = scanner.nextInt();
#         System.out.print("Enter second number: ");
#         int b = scanner.nextInt();
#         while (b != 0) {
#             int temp = b;
#             b = a % b;
#             a = temp;
#         }
#         System.out.println("GCD: " + a);
#         scanner.close();
#     }
# }
# EOF

# # 16. Find LCM (Least Common Multiple) of Two Numbers
# cat > LCM.java <<EOF
# // 16. Find LCM (Least Common Multiple) of Two Numbers
# import java.util.Scanner;

# public class LCM {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter first number: ");
#         int a = scanner.nextInt();
#         System.out.print("Enter second number: ");
#         int b = scanner.nextInt();
#         int lcm = (a > b) ? a : b;
#         while (true) {
#             if (lcm % a == 0 && lcm % b == 0) {
#                 System.out.println("LCM: " + lcm);
#                 break;
#             }
#             lcm++;
#         }
#         scanner.close();
#     }
# }
# EOF

# # 17. Check Prime Number
# cat > PrimeCheck.java <<EOF
# // 17. Check Prime Number
# import java.util.Scanner;

# public class PrimeCheck {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter a number: ");
#         int num = scanner.nextInt();
#         boolean isPrime = true;
#         if (num <= 1) {
#             isPrime = false;
#         } else {
#             for (int i = 2; i <= Math.sqrt(num); i++) {
#                 if (num % i == 0) {
#                     isPrime = false;
#                     break;
#                 }
#             }
#         }
#         if (isPrime)
#             System.out.println(num + " is a Prime Number");
#         else
#             System.out.println(num + " is not a Prime Number");
#         scanner.close();
#     }
# }
# EOF

# # 18. Print All Prime Numbers in an Interval
# cat > PrimeNumbersInInterval.java <<EOF
# // 18. Print All Prime Numbers in an Interval
# import java.util.Scanner;

# public class PrimeNumbersInInterval {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter lower bound: ");
#         int low = scanner.nextInt();
#         System.out.print("Enter upper bound: ");
#         int high = scanner.nextInt();
#         for (int num = low; num <= high; num++) {
#             boolean isPrime = true;
#             if (num <= 1) {
#                 isPrime = false;
#             } else {
#                 for (int i = 2; i <= Math.sqrt(num); i++) {
#                     if (num % i == 0) {
#                         isPrime = false;
#                         break;
#                     }
#                 }
#             }
#             if (isPrime)
#                 System.out.println(num);
#         }
#         scanner.close();
#     }
# }
# EOF

# # 19. Check Armstrong Number
# cat > ArmstrongNumber.java <<EOF
# // 19. Check Armstrong Number
# import java.util.Scanner;

# public class ArmstrongNumber {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter a number: ");
#         int num = scanner.nextInt();
#         int originalNum = num;
#         int result = 0;
#         int n = String.valueOf(num).length();
#         while (num != 0) {
#             int digit = num % 10;
#             result += Math.pow(digit, n);
#             num /= 10;
#         }
#         if (result == originalNum)
#             System.out.println(originalNum + " is an Armstrong Number");
#         else
#             System.out.println(originalNum + " is not an Armstrong Number");
#         scanner.close();
#     }
# }
# EOF

# cat > PalindromeNumber.java <<EOF
# // Check Palindrome Number
# import java.util.Scanner;

# public class PalindromeNumber {
#     public static void main(String[] args) {
#         Scanner scanner = new Scanner(System.in);
#         System.out.print("Enter a number: ");
#         int original = scanner.nextInt();
#         int num = original;
#         int reversed = 0;

#         while (num != 0) {
#             int digit = num % 10;
#             reversed = reversed * 10 + digit;
#             num /= 10;
#         }

#         if (original == reversed) {
#             System.out.println(original + " is a Palindrome.");
#         } else {
#             System.out.println(original + " is not a Palindrome.");
#         }

#         scanner.close();
#     }
# }
# EOF

cat > ReverseString.java <<EOF
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
EOF

cat > StringPalindrome.java <<EOF
// Program 2: Check if a String is a Palindrome
import java.util.Scanner;

public class StringPalindrome {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String original = scanner.nextLine();
        String reversed = new StringBuilder(original).reverse().toString();
        if (original.equals(reversed)) {
            System.out.println(original + " is a Palindrome.");
        } else {
            System.out.println(original + " is not a Palindrome.");
        }
        scanner.close();
    }
}
EOF

cat > VowelConsonantCount.java <<EOF
// Program 3: Count Vowels and Consonants
import java.util.Scanner;

public class VowelConsonantCount {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String input = scanner.nextLine().toLowerCase();
        int vowels = 0, consonants = 0;
        for (char c : input.toCharArray()) {
            if (Character.isLetter(c)) {
                if ("aeiou".indexOf(c) != -1)
                    vowels++;
                else
                    consonants++;
            }
        }
        System.out.println("Vowels: " + vowels);
        System.out.println("Consonants: " + consonants);
        scanner.close();
    }
}
EOF

cat > AnagramCheck.java <<EOF
// Program 4: Check if Two Strings are Anagrams
import java.util.Arrays;
import java.util.Scanner;

public class AnagramCheck {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter first string: ");
        String str1 = scanner.nextLine().replaceAll("\\s", "").toLowerCase();
        System.out.print("Enter second string: ");
        String str2 = scanner.nextLine().replaceAll("\\s", "").toLowerCase();
        if (str1.length() != str2.length()) {
            System.out.println("Not Anagrams");
        } else {
            char[] arr1 = str1.toCharArray();
            char[] arr2 = str2.toCharArray();
            Arrays.sort(arr1);
            Arrays.sort(arr2);
            if (Arrays.equals(arr1, arr2))
                System.out.println("Anagrams");
            else
                System.out.println("Not Anagrams");
        }
        scanner.close();
    }
}
EOF

cat > RemoveDuplicates.java <<EOF
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
EOF

 

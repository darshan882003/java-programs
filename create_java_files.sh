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
cat > AreaOfCircle.java <<EOF
// 6. Calculate the Area of a Circle
import java.util.Scanner;

public class AreaOfCircle {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter radius: ");
        double radius = scanner.nextDouble();
        double area = Math.PI * radius * radius;
        System.out.println("Area of Circle: " + area);
        scanner.close();
    }
}
EOF

# 7. Calculate the Area of a Rectangle
cat > AreaOfRectangle.java <<EOF
// 7. Calculate the Area of a Rectangle
import java.util.Scanner;

public class AreaOfRectangle {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter length: ");
        double length = scanner.nextDouble();
        System.out.print("Enter width: ");
        double width = scanner.nextDouble();
        double area = length * width;
        System.out.println("Area of Rectangle: " + area);
        scanner.close();
    }
}
EOF

# 8. Calculate the Area of a Triangle
cat > AreaOfTriangle.java <<EOF
// 8. Calculate the Area of a Triangle
import java.util.Scanner;

public class AreaOfTriangle {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter base: ");
        double base = scanner.nextDouble();
        System.out.print("Enter height: ");
        double height = scanner.nextDouble();
        double area = 0.5 * base * height;
        System.out.println("Area of Triangle: " + area);
        scanner.close();
    }
}
EOF

# 9. Calculate Simple Interest
cat > SimpleInterest.java <<EOF
// 9. Calculate Simple Interest
import java.util.Scanner;

public class SimpleInterest {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter principal: ");
        double principal = scanner.nextDouble();
        System.out.print("Enter rate of interest: ");
        double rate = scanner.nextDouble();
        System.out.print("Enter time (in years): ");
        double time = scanner.nextDouble();
        double interest = (principal * rate * time) / 100;
        System.out.println("Simple Interest: " + interest);
        scanner.close();
    }
}
EOF

# 10. Calculate Compound Interest
cat > CompoundInterest.java <<EOF
// 10. Calculate Compound Interest
import java.util.Scanner;

public class CompoundInterest {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter principal: ");
        double principal = scanner.nextDouble();
        System.out.print("Enter rate of interest: ");
        double rate = scanner.nextDouble();
        System.out.print("Enter time (in years): ");
        double time = scanner.nextDouble();
        double amount = principal * Math.pow((1 + rate / 100), time);
        double interest = amount - principal;
        System.out.println("Compound Interest: " + interest);
        scanner.close();
    }
}
EOF

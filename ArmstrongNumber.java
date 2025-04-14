// 19. Check Armstrong Number
import java.util.Scanner;

public class ArmstrongNumber {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int num = scanner.nextInt();
        int originalNum = num;
        int result = 0;
        int n = String.valueOf(num).length();
        while (num != 0) {
            int digit = num % 10;
            result += Math.pow(digit, n);
            num /= 10;
        }
        if (result == originalNum)
            System.out.println(originalNum + " is an Armstrong Number");
        else
            System.out.println(originalNum + " is not an Armstrong Number");
        scanner.close();
    }
}

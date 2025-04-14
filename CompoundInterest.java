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

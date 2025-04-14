// 18. Print All Prime Numbers in an Interval
import java.util.Scanner;

public class PrimeNumbersInInterval {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter lower bound: ");
        int low = scanner.nextInt();
        System.out.print("Enter upper bound: ");
        int high = scanner.nextInt();
        for (int num = low; num <= high; num++) {
            boolean isPrime = true;
            if (num <= 1) {
                isPrime = false;
            } else {
                for (int i = 2; i <= Math.sqrt(num); i++) {
                    if (num % i == 0) {
                        isPrime = false;
                        break;
                    }
                }
            }
            if (isPrime)
                System.out.println(num);
        }
        scanner.close();
    }
}

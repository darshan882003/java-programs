// Program 2: Custom Exception Example
class InvalidAgeException extends Exception {
    public InvalidAgeException(String message) {
        super(message);
    }
}

public class ExceptionHandlingCustomException {
    public static void main(String[] args) {
        try {
            int age = -5;
            if (age < 0) {
                throw new InvalidAgeException("Age cannot be negative.");
            }
        } catch (InvalidAgeException e) {
            System.out.println("Custom Exception Caught: " + e.getMessage());
        }
    }
}

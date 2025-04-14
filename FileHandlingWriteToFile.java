// Program 2: Write to a File
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class FileHandlingWriteToFile {
    public static void main(String[] args) {
        try {
            File file = new File("output.txt");
            FileWriter writer = new FileWriter(file);
            writer.write("Hello, this is a test message.\n");
            writer.write("Writing to a file in Java is simple.");
            writer.close();
            System.out.println("Successfully written to the file.");
        } catch (IOException e) {
            System.out.println("An error occurred while writing to the file.");
            e.printStackTrace();
        }
    }
}

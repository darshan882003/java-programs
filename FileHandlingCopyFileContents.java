// Program 3: Copy Contents of One File to Another
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class FileHandlingCopyFileContents {
    public static void main(String[] args) {
        try {
            FileReader reader = new FileReader("input.txt");
            FileWriter writer = new FileWriter("copy.txt");
            int character;
            while ((character = reader.read()) != -1) {
                writer.write(character);
            }
            reader.close();
            writer.close();
            System.out.println("File copied successfully.");
        } catch (IOException e) {
            System.out.println("An error occurred while copying the file.");
            e.printStackTrace();
        }
    }
}

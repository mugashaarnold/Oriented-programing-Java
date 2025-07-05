import java.util.Scanner;
public class BookDescriptionCounter {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter book description:");
        String description = scanner.nextLine();
        // Count occurrences of "Uganda"
        int count = countOccurrences(description, "Uganda");
        System.out.println("The word 'Uganda' appears " + count + " times.");
        scanner.close();
    }
    public static int countOccurrences(String text, String word) {
        String lowerText = text.toLowerCase();
        String lowerWord = word.toLowerCase();
        int count = 0;
        int index = 0;
        
        while ((index = lowerText.indexOf(lowerWord, index)) != -1) {
            count++;
            index += lowerWord.length(); // Move past the last found index
        }
        return count;
    }
}

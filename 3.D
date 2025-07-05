import java.util.Arrays;
import java.util.Random;

public class AirQualityMonitoring {
    public static void main(String[] args) {
        Random random = new Random();
        int numReadings = 30;
        int[] aqiReadings = new int[numReadings];

        // Generate 30 random AQI readings between 1 and 300
        for (int i = 0; i < numReadings; i++) {
            aqiReadings[i] = random.nextInt(300) + 1; // AQI between 1 and 300
        }

        // Display AQI readings
        System.out.println("AQI Readings: " + Arrays.toString(aqiReadings));

        // Compute median AQI value
                Arrays.sort(aqiReadings);
        double medianAQI;
        if (numReadings % 2 == 0) {
            medianAQI = (aqiReadings[numReadings / 2 - 1] + aqiReadings[numReadings / 2]) / 2.0;
        } else {
            medianAQI = aqiReadings[numReadings / 2];
        }

        System.out.println("Median AQI Value: " + medianAQI);

        // Count "hazardous" days (AQI > 200)
        int hazardousDaysCount = 0;
        for (int i = 0; i < numReadings; i++) {
            if (aqiReadings[i] > 200) {
                hazardousDaysCount++;
            }
        }

        System.out.println("Number of Hazardous Days: " + hazardousDaysCount);
    }
}


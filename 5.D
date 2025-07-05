// Base class
abstract class TaxCategory {
    abstract double calculateVAT(double amount);
}

// Subclass for Retailer
class Retailer extends TaxCategory {
    @Override
    double calculateVAT(double amount) {
        return amount * 0.18; // 18% VAT
    }
}

// Subclass for Wholesaler
class Wholesaler extends TaxCategory {
    @Override
    double calculateVAT(double amount) {
        return amount * 0.15; // 15% VAT
    }
}

// Subclass for Importer
class Importer extends TaxCategory {
    @Override
    double calculateVAT(double amount) {
        return amount * 0.10; // 10% VAT
    }
}

// Main method demonstrating polymorphism
public class Main {
    public static void main(String[] args) {
        TaxCategory[] taxCategories = new TaxCategory[3];
        
        taxCategories[0] = new Retailer();
        taxCategories[1] = new Wholesaler();
        taxCategories[2] = new Importer();
        
        double[] transactionAmounts = {1000.0, 2000.0, 1500.0};
        
        for (int i = 0; i < taxCategories.length; i++) {
            System.out.println("VAT for transaction amount " + transactionAmounts[i] + ": " + 
                taxCategories[i].calculateVAT(transactionAmounts[i]));
        }
    }
}

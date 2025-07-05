public class TransactionRecord {
    private String buyerTIN;
    private String sellerTIN;
    private double invoiceAmount;
    private String transactionTimestamp;

    // Constructor
    public TransactionRecord(String buyerTIN, String sellerTIN, double invoiceAmount, String transactionTimestamp) {
        this.buyerTIN = buyerTIN;
        this.sellerTIN = sellerTIN;
        this.invoiceAmount = invoiceAmount;
        this.transactionTimestamp = transactionTimestamp;
    }

    // Getter and Setter methods
    public String getBuyerTIN() {
        return buyerTIN;
    }

    public void setBuyerTIN(String buyerTIN) {
        this.buyerTIN = buyerTIN;
    }

    public String getSellerTIN() {
        return sellerTIN;
    }

    public void setSellerTIN(String sellerTIN) {
        this.sellerTIN = sellerTIN;
    }

    public double getInvoiceAmount() {
        return invoiceAmount;
    }

    public void setInvoiceAmount(double invoiceAmount) {
        this.invoiceAmount = invoiceAmount;
    }
    public String getTransactionTimestamp() {
        return transactionTimestamp;
    }
    public void setTransactionTimestamp(String transactionTimestamp) {
        this.transactionTimestamp = transactionTimestamp;
    }
}

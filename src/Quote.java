public class Quote {
    private String quote;
    private String color;

    Quote () {
    }
    Quote (String quote, String color) {
        this.quote = quote;
        this.color = color;
    }

    public void set(String quote, String color) {
        this.quote = quote;
        this.color = color;
    }
    public String getQuote() {
        return this.quote;
    }
    public String getColor() {
        return this.color;
    }
}

import java.util.Random;

public class RandomColorGenerator {
    private int red;
    private int green;
    private int blue;
    private String color;

    RandomColorGenerator() {
        Random rnd = new Random();
        this.red = rnd.nextInt(255);
        this.green = rnd.nextInt(255);
        this.blue = rnd.nextInt(255);
        this.color = ("#"+Integer.toHexString(red)+
                Integer.toHexString(green)+
                Integer.toHexString(blue));
    }
    public String getColor() {
        return this.color;
    }
}

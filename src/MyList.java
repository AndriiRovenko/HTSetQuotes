import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class MyList {
    private List<Quote> quoteList = new ArrayList<Quote>();

    MyList(int count) {
        for (int i = 0; i < count; i++) {
            Quote tmpQuote = new Quote();
            RandomColorGenerator rcg = new RandomColorGenerator();
            tmpQuote.set("quote "+i,rcg.getColor());
            quoteList.add(tmpQuote);
        }
    }

    MyList(){}
    public void add(String quote, String color) {
        quoteList.add(new Quote(quote, color));
    }
    public String getQuote(int i) {
        return quoteList.get(i).getQuote();
    }
    public String getColor(int i) {
        return quoteList.get(i).getColor();
    }
    public int len() {
        return quoteList.size();
    }
}

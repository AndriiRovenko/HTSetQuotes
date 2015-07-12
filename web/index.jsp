<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Random" %>
<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 7/9/15
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>


<%
  protected class Quote {
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

%>
<!----------------------->
<%
  protected class RandomColorGenerator {
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

%>
<!----------------------->
<%
  protected class MyList{
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
%>
<!--program part-->
<%

  MyList list = new MyList();
  Random rnd = new Random();
  int tmpNumber = rnd.nextInt(5);

  list.add("first quote", "#c7afa3");
  list.add("second quote", "#eadcd9");
  list.add("third quote", "#d0c9e1");
  list.add("fourth quote", "#7b6f92");
  list.add("fifth quote", "#413a5d");

%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>HomeTask</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
      div.center {
        background-color: <%=list.getColor(tmpNumber)%>;
        box-shadow: 0 0 20px <%=list.getColor(tmpNumber)%>;
      }
    </style>
  </head>
  <body>

  <!--
    <div class="center">
      <h1>
        <%=list.getQuote(tmpNumber)%>
      </h1>
      <h2>
        <%=list.getColor(tmpNumber)%>
      </h2>
    </div>
    <div class="centerMenu">
      <%
      for (int i=0; i<5; i++) {
        %>
        <div class="menuItem" style="background-color:<%=list.getColor(i)%>">;
          <%=list.getQuote(i)%>&nbsp;
        </div>
        <%
      }
      %>
    </div>
    -->
  </body>
</html>

// "Das haben wir schon immer getrunken
// und das werden wir auch weiterhin trinken!"

class Milchkaffee {
  private String nameWithPrice(String price) {
    return "Milchkaffee - " + price;
  }

  public static void main(String[] args){
    Milchkaffee milchkaffee = new Milchkaffee();
    String description = milchkaffee.nameWithPrice("1,00€");
    System.out.println(description);
  }
}

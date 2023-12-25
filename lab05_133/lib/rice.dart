
class Drink{
  final String thName;
  final String enName;
  final double price;
  final String value;

  Drink({required this.thName, required this.enName, required this.price, required this.value});//RadioListTile Value

  static List<Drink> getDrink(){

    return[
      Drink(
        thName: "อเมริกาโน่", 
        enName: "Americano", 
        price: 50, 
        value: "Americano"),

      Drink(
        thName: "โกโก้", 
        enName: "Coco", 
        price: 60, 
        value: "Coco"),

      Drink(
        thName: "นม", 
        enName: "Milk", 
        price: 70, 
        value: "Milk"),
    ];
  }
}
import 'package:flutter/material.dart';
import 'package:lab05_133/rice.dart';

class FirstPages extends StatefulWidget {
  const FirstPages({super.key, required String title});

  @override
  State<FirstPages> createState() => _FirstPagesState();
}

class _FirstPagesState extends State<FirstPages> {

  List<Drink> drinks = [];

  String groupDrink = "ยังไม่ได้เลือก";

  @override
  void initState() {
    super.initState();
    drinks = Drink.getDrink();
    // print(drinks[2].thName);
    for (var dr in drinks) {
      print(dr.thName);
      print(dr.price);
    }
  }
  
  List<Widget> createDrinkRadioList(){

    List<Widget> myDrink = [];

    for (var dr in drinks) {
      myDrink.add(
        //RadioListTile
        RadioListTile(
          title: Text(dr.thName),
          subtitle: Text(dr.enName),
          secondary: Text(dr.price.toStringAsFixed(2)),
          value: dr.value, 
          groupValue: groupDrink, 
          onChanged: (value) {
          setState(() {
            groupDrink = value!;
          });
        },)
      );
    }
    return myDrink;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drink"),
      ),
      body: Column(
        children: [
          Text("Drink"),
          Column(
            children: createDrinkRadioList(), //list<RadioListTile>
          ),
          Text(groupDrink)
        ],
      ),
    );
  }
}
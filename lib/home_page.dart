import 'package:flutter/material.dart';
import 'package:unit_testing/salary_calculation.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final hourcontroller=TextEditingController();
  int? val;

  SalaryCalculation sc =SalaryCalculation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Unit Testing",style: TextStyle(fontSize: 18,color: Colors.white),),
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          // Text("Per Hour Payment 500\$",
          // style: TextStyle(
          //   fontSize: 24,
          //   fontWeight: FontWeight.bold,
          // ),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 80,right: 80),
            child: TextField(

              //widget test er id eta
              key: Key("Our_Key"),

              controller: hourcontroller,
              decoration: InputDecoration(
                labelText: 'Enter Hour',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black54),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(

            //test widget e pathaisi
            key: Key("Calculate_Button"),


            style:ElevatedButton.styleFrom(
              minimumSize: Size(200, 50),
              backgroundColor: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: (){
              setState(() {
                val=int.parse(hourcontroller.text);
                val=sc.calculateSalary(val!);
              });

            },
              child: Text("Calculate",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
              ),),),

          SizedBox(height: 30,),
          if(val!=null)
            ...{
            Column(
              children: [
                Text("Your Salary",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                Text("${val}\$",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),),
              ],
            ),

            }
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:planit_project/Widgets/simpleInputField.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
   final totallBillController = TextEditingController();
   final formkey = GlobalKey<FormState>();
   static const Color containerColor = Color(0xFFF5F8FB); //setting color globally
   static const Color textBlack = Color(0xFF232323);
   static const Color textlightBlack = Color(0xFF717171);
   static const Color clearButtonColor = Color(0xFFF57511);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Tip Calculator",
          style: TextStyle(fontSize:18, color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        elevation: 3,
        backgroundColor: Colors.white,
      ),
    body: Padding(
      padding: const EdgeInsets.all(10),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text("Total Bill",style: TextStyle(color:textlightBlack)),
                      Text("\$ ${totallBillController.text}",style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: textBlack)),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Person", style: TextStyle(color: textlightBlack)),
                          Text("Tip Amount",style: TextStyle( color: textBlack)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("05", style: TextStyle(color: textlightBlack,fontSize: 16,fontWeight: FontWeight.w700)),
                          Text("\$ 20.0",style: TextStyle( color: textBlack,fontSize: 16,fontWeight: FontWeight.w700)),
                        ],


                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Amount per Person", style: TextStyle(color: textlightBlack)),
                      Text("\$ 5.0",style: TextStyle( color: textBlack,fontSize: 18,fontWeight: FontWeight.w900)),
                    ],
                  ),
                ),
                const Spacer(),
                simpleInputField(
                  controller: totallBillController,
                  title: "Total BIll",
                  hinttext: "Please enter total bill amount"

                )

            ],


          ),
        )),



    );
  }
}

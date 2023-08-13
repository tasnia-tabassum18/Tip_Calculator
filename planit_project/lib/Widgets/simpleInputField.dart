import 'package:flutter/material.dart';

class simpleInputField extends StatefulWidget {
  final TextEditingController controller;
  final String title;
  final String hinttext;
  final IconData? iconData;
  const simpleInputField({super.key, required this.controller, required this.title, required this.hinttext, this.iconData});

  @override
  State<simpleInputField> createState() => _simpleInputFieldState();
}

class _simpleInputFieldState extends State<simpleInputField> {

  static const Color containerColor = Color(0xFFF5F8FB); //setting color globally
  static const Color textBlack = Color(0xFF232323);
  static const Color textlightBlack = Color(0xFF717171);
  static const Color clearButtonColor = Color(0xFFF57511);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title,style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700,color: textBlack)),
        TextFormField(
              controller: widget.controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
              hintText: widget.hinttext,
              hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: textlightBlack),
              suffixIcon: widget.iconData != null? Icon(widget.iconData,color: textBlack,): Text(""),
              filled: true,
              fillColor: containerColor,
              border: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.transparent),
              borderRadius: BorderRadius.circular(5)
              ),
              enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.transparent),
              borderRadius: BorderRadius.circular(5)
              ),
              focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.transparent),
              borderRadius: BorderRadius.circular(5)
              ),
              ),
              onFieldSubmitted: (value){
              if(value.isEmpty){
              widget.controller.text= "0.00";
              }
              widget.controller.text =value.toString();

              setState(() {

              });
              },
             validator: (value){
                if(value == null || value.isEmpty){
                  return "Please enter a valid amount";

                }
                return null;

          },
            onSaved: (value){
                widget.controller.text = value.toString();
                setState(() {

                });
            },

              ),
    ],
    );



  }
}

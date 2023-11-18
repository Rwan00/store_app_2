import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_form_field.dart';

class UpdateProductPage extends StatelessWidget {
  static String id = "uptade product";
  const UpdateProductPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Update Products",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const InputField(hint: "Enter Product Name",title: "Name",),
        const InputField(hint: "Enter Product Description",title: "Description",),
        const InputField(hint: "Enter Product Price",title: "Price",),
        const InputField(hint: "Enter Product Image",title: "Image",),
        const SizedBox(height: 50,),
        MyButton(label: 'Update', onTap: () {  },),
      ]),
    );
  }
}

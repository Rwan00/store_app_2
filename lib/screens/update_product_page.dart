import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

// ignore: must_be_immutable
class UpdateProductPage extends StatelessWidget {
  static String id = "uptade product";
  String? name;
  String? desc;
  String? img;
  int? price;
  UpdateProductPage({super.key});
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            const SizedBox(height: 100,),
          InputField(
            hint: "Enter Product Name",
            title: "Name",
            onChanged: (data) {
              name = data;
            },
          ),
          InputField(
            hint: "Enter Product Description",
            title: "Description",
            onChanged: (data) {
              desc = data;
            },
          ),
          InputField(
            hint: "Enter Product Price",
            title: "Price",
            inputType: TextInputType.number,
            onChanged: (data) {
              price = int.parse(data);
            },
          ),
          InputField(
            hint: "Enter Product Image",
            title: "Image",
            onChanged: (data) {
              img = data;
            },
          ),
          const SizedBox(
            height: 50,
          ),
          MyButton(
            label: 'Update',
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}

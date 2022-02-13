import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:nav/main_page.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  num taille = 0;
  num age = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New prod"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        children: [
          TextFormField(
            onChanged: (v) {
              setState(() {
                taille = num.parse(v);
              });
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: const Text(" Votre taille"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            onChanged: (v) {
              setState(() {
                age = num.parse(v);
              });
            },
            maxLength: 10,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: const Text("votre Age"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              //suffixIcon: const Icon(CupertinoIcons.eye),
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              if (taille > 1.6) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const MainPage()));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        " Vous avez ${age} ans et de $taille cm de taille"),
                    duration: const Duration(seconds: 6),
                    backgroundColor: Colors.orange,
                  ),
                );
              }
            },
            child: const Text("submit"),
          ),
        ],
      ),
    );
  }
}

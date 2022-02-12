import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'product.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var myProducts = <Product>[
    Product(
      name: "Tesla moto",
      image:
          "https://images.unsplash.com/photo-1640622300930-6e8daa98536f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80",
      price: 10000,
    ),
    Product(
      name: "Nio moto",
      image:
          "https://images.unsplash.com/photo-1638913662295-9630035ef770?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      price: 7000,
    ),
    Product(
      name: "Honda moto",
      image:
          "https://images.unsplash.com/photo-1644579156448-fd9346f7a333?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      price: 1500,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: const Text("My products"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 24,
          bottom: 120,
        ),
        itemCount: myProducts.length,
        //itemCount: 5,
        itemBuilder: (context, index) {
          // return Text("$index");

          Product product = myProducts[index];
          return Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(product.image),
                ),
                ListTile(
                  title: Text(
                    product.name,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                  trailing: Text("${product.price} \$"),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context) => const AddProduct(),
          // ));

          Navigator.of(context).pushNamed("new_product");
          print("Allez a la page d'ajout produit");
        },
        child: const Icon(CupertinoIcons.add),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav/detail_contact.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My products"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailContact(index: index + 1)));
              },
              title: const Text("Olivier"),
              subtitle: const Text("0978154329"),
              leading: CircleAvatar(
                child: Text("${index + 1}"),
              ),
              trailing: const Icon(CupertinoIcons.chevron_right),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 3,
            );
          },
          itemCount: 15),
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

import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWIdget extends StatelessWidget {
  final Item item;

  const ItemWIdget({super.key, required this.item}) : assert(item != null);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 245, 237, 212),
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        //leading: Image.asset("assets/images/l1.png"),
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\₹${item.price}",
          textScaleFactor: 1.3,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 1));
    var catalogjson = await rootBundle.loadString("assets/files/catalog.json");
    // print(catalogjson);
    var decodeData = jsonDecode(catalogjson);
    var productsData = decodeData["products"];
    Catalogmodel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final int days = 69;
    final String name = 'login success';
    // final dummylist = List.generate(20, (index) => Catalogmodel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: (Catalogmodel.items != null && Catalogmodel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 17,
                    crossAxisSpacing: 17),
                itemBuilder: (context, index) {
                  final item = Catalogmodel.items[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                            decoration: BoxDecoration(color: Colors.deepPurple),
                            padding: const EdgeInsets.all(13),
                            child: Text(
                              item.name,
                              style: TextStyle(color: Colors.white),
                            )),
                        child: Image.network(
                          item.image,
                        ),
                        footer: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 18, 18, 19)),
                            padding: const EdgeInsets.all(13),
                            child: Text(
                              item.price.toString(),
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 254, 254)),
                            )),
                      ));
                },
                itemCount: Catalogmodel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}

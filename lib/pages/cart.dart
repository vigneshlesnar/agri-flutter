import 'package:flutter/material.dart';


//my imports

import 'package:agri/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff51b859),
        title: Text('Agro Cart'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title: Text('Total :'),
              subtitle: Text("\$250"),
            )),
            Expanded(child: MaterialButton(onPressed: () {},
              color: Colors.red,
            child: Text('Check Out',style: TextStyle(color: Colors.white),),)),
          ],
        ),
      ),
    );
  }
}

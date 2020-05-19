import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var product_on_cart = [
    {
      "name": "iamv",
      "picture": "images/1.jpg",
      "size": "M",
      "color": "Black",
      "quantity": 1,
      "price": 50,
    },
    {
      "name": "iamr",
      "picture": "images/2.jpg",
      "size": "M",
      "color": "Black",
      "quantity": 1,
      "price": 150,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: product_on_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: product_on_cart[index]["name"],
            cart_prod_picture: product_on_cart[index]["picture"],
            cart_prod_size: product_on_cart[index]["size"],
            cart_prod_quantity: product_on_cart[index]["quantity"],
            cart_prod_color: product_on_cart[index]["color"],
            cart_prod_price: product_on_cart[index]["price"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantity;
  final cart_prod_price;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_quantity,
    this.cart_prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(


      child: ListTile(
        contentPadding: EdgeInsets.all(8.0),

        //===================Leading Section====================
        leading: Image.asset(
          cart_prod_picture,
          height: 80.0,
          width: 80.0,

        ),

        //================Title Section================
        title: Text(cart_prod_name),
//==============sub title section=======================
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                //===================product size==================
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_prod_size),
                ),
//======================product color===========================
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(cart_prod_color),
                ),
              ],
            ),
            //==========================product price=====================

            Container(
              alignment: Alignment.topLeft,

              child: Text("\$$cart_prod_price",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w800,),),

            ),

          ],

        ),
        
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(

            children: <Widget>[

              IconButton(icon: Icon(Icons.arrow_drop_up),iconSize: 50.0, onPressed: (){}),
              Text("1",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
              IconButton(icon: Icon(Icons.arrow_drop_down,),iconSize: 50.0, onPressed: (){}),

            ],
          ),

        ),
      ),

    );
  }
}

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agri/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "iamv",
      "picture": "images/1.jpg",
      "old_price": 80,
      "price": 50,
    },
    {
      "name": "iamr",
      "picture": "images/2.jpg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "iamv",
      "picture": "images/1.jpg",
      "old_price": 80,
      "price": 50,
    },
    {
      "name": "iamr",
      "picture": "images/2.jpg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "iamv",
      "picture": "images/1.jpg",
      "old_price": 80,
      "price": 50,
    },
    {
      "name": "iamr",
      "picture": "images/2.jpg",
      "old_price": 180,
      "price": 150,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_oldprice: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_oldprice,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: Text('hero 1'),
      child: Material(
        child: InkWell(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            // passing the value for products to the product details page
              builder: (context) => ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_picture: prod_picture,
                    product_detail_price: prod_price,
                    product_detail_oldprice: prod_oldprice,
                  ))),
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(
                  prod_name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text("\$$prod_price",
                    style: TextStyle(
                        color: const Color(0xff51b859),
                        fontWeight: FontWeight.w800)),
                subtitle: Text("\$$prod_oldprice",
                    style: TextStyle(
                        color: Colors.black54,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            child: Image.asset(
              prod_picture,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ));
  }
}

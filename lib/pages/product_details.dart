import 'package:flutter/material.dart';
import 'package:agri/app_screens/Home.dart';
import 'package:agri/components/products.dart';
import 'package:agri/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_price;
  final product_detail_oldprice;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_picture,
    this.product_detail_price,
    this.product_detail_oldprice,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff51b859),
        title: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
            },
            child: Text('RentalAgro')),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      'Price',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("\$${widget.product_detail_oldprice}",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.black54)),
                        ),
                        Expanded(
                          child: Text(
                            "Offer price :\$${widget.product_detail_price}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
          //===============the first button==========================
          Row(
            children: <Widget>[
              //===================the button size=================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Size'),
                            content: Text('choose size'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Close'),
                              )
                            ],
                          );
                        });
                  },
                  elevation: 2.0,
                  color: Colors.white,
                  textColor: Colors.green,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Color'),
                            content: Text('choose color'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Close'),
                              )
                            ],
                          );
                        });
                  },
                  elevation: 2.0,
                  color: Colors.white,
                  textColor: Colors.green,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Qty'),
                            content: Text('choose Qty'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Close'),
                              )
                            ],
                          );
                        });
                  },
                  elevation: 2.0,
                  color: Colors.white,
                  textColor: Colors.green,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          //================Second button===============
          Row(
            children: <Widget>[
              //===================the button size=================
              IconButton(
                icon: Icon(Icons.add_shopping_cart, color: Colors.red),
              ),
              IconButton(
                icon: Icon(Icons.favorite, color: Colors.red),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text("Buy now"),
                ),
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text('Product details'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui magni mollitia dolorem deleniti labore consequatur quisquam repellat quas amet fuga repudiandae eaque, nobis porro eos atque necessitatibus, cupiditate alias tenetur.Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui magni mollitia dolorem deleniti labore consequatur quisquam repellat quas amet fuga repudiandae eaque, nobis porro eos atque necessitatibus, cupiditate alias tenetur.'),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0),child: Text(widget.product_detail_name),),

            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product brand',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0),child: Text('Brand X'),),

            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product contition',
                  style: TextStyle(color: Colors.grey),

                ),
              ),
              Padding(padding: EdgeInsets.all(5.0),child: Text('New'),),

            ],
          ),

          //===========Similar products====================
          Divider(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Similar products'),
          ),
          Container(
            height: 360.0,
            child: Similar_products(),
          ),
        ],
      ),
    );
  }
}
 class Similar_products extends StatefulWidget {
   @override
   _Similar_productsState createState() => _Similar_productsState();
 }
 
 class _Similar_productsState extends State<Similar_products> {
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
           return Similar_single_prod(
             prod_name: product_list[index]['name'],
             prod_picture: product_list[index]['picture'],
             prod_oldprice: product_list[index]['old_price'],
             prod_price: product_list[index]['price'],
           );
         });
   }
 }

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  Similar_single_prod({
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

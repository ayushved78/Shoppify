import 'package:e_comm/pages/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name":"blazer",
      "picture":"images/products/blazer1.jpeg",
      "old_price": 1200,
      "new_price": 950,
    },
    {
      "name":"Red Dress",
      "picture":"images/products/dress1.jpeg",
      "old_price": 1000,
      "new_price": 750,
    },
    {
      "name":"Red Dragonr",
      "picture":"images/products/hills2.jpeg",
      "old_price": 8000,
      "new_price": 6550,
    },
    {
      "name":"Cotton pant",
      "picture":"images/products/pants1.jpg",
      "old_price": 250,
      "new_price": 175,
    },
    {
      "name":" Dress",
      "picture":"images/products/dress2.jpeg",
      "old_price": 1250,
      "new_price": 1150,
    },
    {
      "name":"Shoes",
      "picture":"images/products/shoe1.jpg",
      "old_price": 1250,
      "new_price": 1249,
    },
    {
      "name":"Skirt",
      "picture":"images/products/skt2.jpeg",
      "old_price": 1000,
      "new_price": 750,
    },
    {
      "name":"Pant",
      "picture":"images/products/pants2.jpeg",
      "old_price": 1000,
      "new_price": 750,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
        itemBuilder: (BuildContext context, int index){
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_image: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_new_price: product_list[index]['new_price'],
        );
        },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_image;
  final prod_old_price;
  final prod_new_price;
  Single_prod({this.prod_name,this.prod_image,this.prod_old_price,this.prod_new_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new PageDetails(
              product_detail_name: prod_name,
              product_detail_image: prod_image,
              product_detail_old: prod_old_price,
              product_detail_new: prod_new_price,
            ))),
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold),),
                  title: Text('\$$prod_new_price',style: TextStyle(color: Colors.red,fontSize: 15.0),),
                subtitle: Text('\$$prod_old_price',style: TextStyle(color: Colors.black54,decoration: TextDecoration.lineThrough),),
                ),

              ),
              child: Image.asset(prod_image,fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}

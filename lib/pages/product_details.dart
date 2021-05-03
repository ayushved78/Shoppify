import 'package:flutter/material.dart';

class PageDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_image;
  final product_detail_old;
  final product_detail_new;

  PageDetails({this.product_detail_name,this.product_detail_image,this.product_detail_old,this.product_detail_new});
  @override
  _PageDetailsState createState() => _PageDetailsState();
}

class _PageDetailsState extends State<PageDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Shoppify'),
        centerTitle: true,
        actions: [
          new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
        ],
      ),
      body: new ListView(
        children: [
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_image),

              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                  title: new Row(
                    children: [
                      Expanded(child: new Text("\$${widget.product_detail_old}",style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),)),
                      Expanded(child: new Text("\$${widget.product_detail_new}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text('Size'),
                        content: Text('Choose the Size'),
                        actions: [
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text('Close'),),
                        ],
                      );
                    });
                  },
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                child: Row(
                  children: [
                    Expanded(child: new Text('Size'),),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                 ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text('Color'),
                        content: Text('Choose the Color'),
                        actions: [
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: new Text('Close'),),
                        ],
                      );
                    });
                  },
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: new Text('Color'),),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text('Quantity'),
                        content: Text('Choose the Quantity'),
                        actions: [
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: new Text('Close'),),
                        ],
                      );
                    });
                  },
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: new Text('Qty'),),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: MaterialButton(
                onPressed: (){},
                color: Colors.red,
                textColor: Colors.white,
                child: new Text('BUY NOW',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16.0),),
               ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){},color: Colors.red,),
              new IconButton(icon: Icon(Icons.favorite_outline_rounded), onPressed: (){},color: Colors.red,),
            ],
          ),
          new ListTile(
            title: new Text('Product Details'),
            subtitle: new Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
            
          ),
          Divider(color: Colors.red,),
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),child: Text('Product Brand',style: TextStyle(color: Colors.grey),),),
              Padding(padding: const EdgeInsets.all(5.0),child: Text('Adidas'),),
            ],
          ),
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),child: Text('Product Name',style: TextStyle(color: Colors.grey),),),
              Padding(padding: const EdgeInsets.all(5.0),child: Text(widget.product_detail_name),),
            ],
          ),
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),child: Text('Product Condition',style: TextStyle(color: Colors.grey),),),
            ],
          ),
          Divider(color: Colors.red,),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'cart_model.dart';
class HomePage extends StatelessWidget {
final List <Product> _products = [
    Product(
        id: 1,
        title: "Apple",
        price: 20.0,
        imgUrl: "assets/images/apple.png",
        quantity: 1),
    Product(
        id: 2,
        title: "Banana",
        price: 40.0,
        imgUrl: "assets/images/banana.png",
        quantity: 1),
    Product(
        id: 3,
        title: "Orange",
        price: 20.0,
        imgUrl: "assets/images/orange.png",
        quantity: 1),
    Product(
        id: 4,
        title: "Melon",
        price: 40.0,
        imgUrl: "assets/images/watermelon.png",
        quantity: 1),
    Product(
        id: 5,
        title: "Avocado",
        price: 25.0,
        imgUrl: "assets/images/avocado.png",
        quantity: 1),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("HomePage"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
        ],
      ),
      body:GridView.builder(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8, crossAxisSpacing: 8, childAspectRatio: 0.8, mainAxisExtent: 300),
        itemCount: _products.length,
        itemBuilder: (context, index) {
          return Card(
            child: SingleChildScrollView(
              child: Column(
              children: <Widget>[
                Image.asset(_products[index].imgUrl,),
                Text(_products[index].title),
                Text(_products[index].price.toString()+"\$"), 
                OutlinedButton(onPressed: (){}, child: const Text("Add to Cart"))                   
              ],
                      ),
            ),);
        }));
}

}
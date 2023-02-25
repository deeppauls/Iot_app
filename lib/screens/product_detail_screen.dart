import 'package:flutter/material.dart';
import 'package:iot_app/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)?.settings.arguments as Product;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: product.id,
                child: Image.network(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                  child: Text(
                    product.title,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 25, top: 15),
                          child: Text(
                            '\$${product.price}/-',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Row(
                        children: [
                          Text('${product.rating.rate}'),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 14, left: 40, right: 40),
                  child: Column(
                    children: [
                      Text(
                        'Product Description:',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        product.description,
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 650),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iot_app/models/product.dart';
import 'package:iot_app/screens/product_detail_screen.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          'detail',
          arguments: product,
        );
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Hero(
                      tag: product.id,
                      child: Image.network(
                        product.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                product.title,
                maxLines: 2,
                style: TextStyle(
                    fontFamily: 'avenir', fontWeight: FontWeight.w800),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8),
              if (product.rating != null)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${product.rating.rate}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              SizedBox(height: 8),
              Text('\$${product.price}',
                  style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
            ],
          ),
        ),
      ),
    );
  }
}

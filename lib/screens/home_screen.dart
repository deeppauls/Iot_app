import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_app/controller/product_controller.dart';
import 'package:iot_app/models/product_tile.dart';
import 'package:iot_app/models/appbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: appbar(),
      ),
      body: Obx(
        () {
          if (productController.isLoading.value)
            return Center(child: CircularProgressIndicator());
          else
            return GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: productController.productList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                mainAxisExtent: 330,
              ),
              itemBuilder: (context, index) => ProductTile(
                productController.productList[index],
              ),
            );
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:store_app/models/product_model.dart';
// import 'package:store_app/services/get_all_product.dart';
// import 'package:store_app/widgets/custom_card.dart';

// class HomePage extends StatelessWidget {
//   static const String routeName = 'Home-Page';
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('New Trend'),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(FontAwesomeIcons.cartShopping),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(
//           left: 16.0,
//           right: 16.0,
//           top: 70.0,
//         ),
//         child: FutureBuilder<List<ProductModel>>(
//           future: AllProductsService().getAllProducts(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               List<ProductModel> products = snapshot.data!;
//               return GridView.builder(
//                 clipBehavior: Clip.none,
//                 physics: const BouncingScrollPhysics(),
//                 itemBuilder: (context, index) => CustomCard(
//                   product: products[index],
//                 ),
//                 itemCount: products.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 1.4,
//                   crossAxisSpacing: 10.0,
//                   mainAxisSpacing: 80.0,
//                 ),
//               );
//             } else {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_product.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePAge';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductsService().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;
              return GridView.builder(
                  itemCount: products.length,
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 100,
                  ),
                  itemBuilder: (context, index) {
                    return CustomCard(product: products[index]);
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

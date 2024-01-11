// import 'package:store_app/helper/api.dart';
// import 'package:store_app/models/product_model.dart';

// class CategoriesService {
//   Future<List<ProductModel>> getCategoriesProducts(
//       {required String categoryName}) async {
//     Api api = Api();
//     // ignore: missing_required_param
//     List<dynamic> data = await api.get(
//         url: 'https://fakestoreapi.com/products/category/$categoryName');

//     List<ProductModel> productsList = [];

//     for (int i = 0; i < data.length; i++) {
//       productsList.add(
//         ProductModel.fromJson(data[i]),
//       );
//     }

//     return productsList;
//   }
// }

import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }

    return productsList;
  }
}

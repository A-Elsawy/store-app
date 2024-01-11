// import 'package:store_app/helper/api.dart';

// class GetAllCategoriesService {
//   Future<List<dynamic>> getAllCategories() async {
//     Api api = Api();

//     List<dynamic> data =
//         // ignore: missing_required_param
//         await api.get(url: 'https://fakestoreapi.com/products/categories');

//     return data;
//   }
// }

import 'package:store_app/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCateogires() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}

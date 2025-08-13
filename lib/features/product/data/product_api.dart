// import 'package:my_flutter_app/features/product/data/models/product.dart';
//
// import '../../../core/services/api_service.dart';
//
// class ProductApi {
//   final ApiService api;
//   ProductApi(this.api);
//
//   Future<List<Product>> getProducts() async {
//     final data = await api.get('/products');
//     return (data as List).map((e) => Product.fromJson(e)).toList();
//   }
//
//   Future<Product> getProduct(int id) async {
//     final data = await api.get('/products/$id');
//     return Product.fromJson(data);
//   }
//
//   Future<Product> createProduct(Product product) async {
//     final data = await api.post('/products', product.toJson());
//     return Product.fromJson(data);
//   }
//
//   Future<Product> updateProduct(int id, Product product) async {
//     final data = await api.put('/products/$id', product.toJson());
//     return Product.fromJson(data);
//   }
//
//   Future<void> deleteProduct(int id) async {
//     await api.delete('/products/$id');
//   }
// }

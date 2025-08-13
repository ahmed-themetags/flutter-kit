import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_app/core/services/api_service.dart';


// API Service provider
final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService(baseUrl: 'https://fakestoreapi.com');
  // return ApiService(baseUrl: 'http://mun.market/api/v1');
});

// Products FutureProvider
final productsProvider = FutureProvider<List<dynamic>>((ref) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.fetchProducts();
});

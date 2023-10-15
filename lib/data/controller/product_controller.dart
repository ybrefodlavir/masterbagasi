import 'package:get/get.dart';
import 'package:masterbagasi/data/model/product_model.dart';
import 'package:masterbagasi/data/repositories/product_repository.dart';

class ProductController extends GetxController {
  var product = <ProductModel>[].obs;
  var isLoading = false.obs;
  var error = ''.obs;

  @override
  void onInit() {
    fetchAllProduct();
    super.onInit();
  }

  // Fetch products
  Future<void> fetchAllProduct() async {
    try {
      isLoading.value = true;
      var productData = await ProductRepository().fetchAllProduct();
      product.assignAll(productData);
    } catch (e) {
      error.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}

import 'package:alis/screens/login/login_tow.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:persian_utils/persian_utils.dart';
import '../models/products.dart';

class PhoneController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController phoneController;
  var phone = ''.obs;

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    phoneController.dispose();
  }

  String? validatePhone(String value) {
    value.isValidIranianMobileNumber().toString();
    // return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (isValid) {
      // return;
      Get.to(LoginTow(onChanged: (value) {}));
    }
    loginFormKey.currentState!.save();
  }
}

class CartController extends GetxController {
  var _products = {}.obs;

  addToCArt(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
      // Get.snackbar(
      //   "محصول اضافه شد",
      //   "شما تعداد ${product.title} را یک واحد افزایش دادید",
      //   snackPosition: SnackPosition.BOTTOM,
      //   duration: Duration(seconds: 2),
      // );
    } else {
      _products[product] = 1;
      Get.snackbar(
        "محصول به سبد خریداضافه شد",
        "",
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 2),
      );
    }
  }

  removeCart(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
      // Get.snackbar(
      //   "محصول کم شد",
      //   "شما تعداد ${product.title} را یک واحد کاهش دادید",
      //   snackPosition: SnackPosition.BOTTOM,
      //   duration: Duration(seconds: 2),
      // );
    }
  }

  get products => _products;

  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();

  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}

class SearchController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController searchController;
  var search = ''.obs;

  @override
  void onInit() {
    super.onInit();
    searchController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    searchController.dispose();
  }
}

class PreviewData extends GetxController {
  var name = ''.obs;
  var code = ''.obs;
  var email = ''.obs;
  var ostan = ''.obs;
  var city = ''.obs;
  var codeposti = ''.obs;
  var phone = ''.obs;
  var moaref = ''.obs;
  var nagsh = ''.obs;
  var nagsh2 = ''.obs;
  var nagsh3 = ''.obs;
  //  var nagsh = [].obs;
  //  List <String>nagsh = [];
}

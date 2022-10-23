import 'package:get/get.dart';
import 'package:car/models/product_models.dart';
import 'package:car/services/category_services.dart';

class CategoryController extends GetxController {
  var categoryNameList = <String>[].obs;
  var categoryList = <ProductModels>[].obs;

  var isCatgeoryLoading = false.obs;
  var isAllCategory = false.obs;

  List<String> imageCategory = [
    "https://i.pinimg.com/564x/03/42/70/03427052fcba1deca91f4ba2c86c2c5c.jpg",
    "https://i.pinimg.com/564x/23/ed/84/23ed842e31148fc03827b668dcf49f7b.jpg",
    "https://i.pinimg.com/564x/e3/ea/60/e3ea60054e6bcad27c6e2f4decc9e07f.jpg",
    "https://i.pinimg.com/564x/86/62/17/866217811f20a7a0b7f814244b5bab33.jpg",
  ].obs;

  @override
  void onInit() {
    super.onInit();
    getCategorys();
  }

  void getCategorys() async {
    var categoryName = await CategoryServices.getCategory();

    try {
      isCatgeoryLoading(true);
      if (categoryName.isNotEmpty) {
        categoryNameList.addAll(categoryName);
      }
    } finally {
      isCatgeoryLoading(false);
    }
  }

  getAllCategorys(String namecategory) async {
    isAllCategory(true);
    categoryList.value =
        await AllCategorySercvises.getAllCatehory(namecategory);

    isAllCategory(false);
  }

  getCategoryIndex(int index) async {
    var categoryAllName = await getAllCategorys(categoryNameList[index]);

    if (categoryAllName != null) {
      categoryList.value = categoryAllName;
    }
  }
}

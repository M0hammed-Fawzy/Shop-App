import 'package:get/get.dart';
import 'package:car/models/product_models.dart';
import 'package:car/services/category_services.dart';

class CategoryController extends GetxController {
  var categoryNameList = <String>[].obs;
  var categoryList = <ProductModels>[].obs;

  var isCatgeoryLoading = false.obs;
  var isAllCategory = false.obs;

  List<String> imageCategory = [
    "https://i.pinimg.com/564x/23/5f/21/235f2112e6ca2895d426e7d19eb297fc.jpg",
    "https://i.pinimg.com/originals/f4/7b/d1/f47bd1f6a74ba192a475106a96e5961d.jpg",
    "https://i.pinimg.com/564x/35/b5/11/35b5112ce3a83d7d6155c30807d31000.jpg",
    "https://i.pinimg.com/564x/3d/b7/a6/3db7a6c3e28382c078b48d2a756893e7.jpg",
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


import 'package:fahadshabir/Models/FindFoodModel.dart';
import 'package:get/get.dart';

class SlideShowController extends GetxController
{
  var activeIndex=0.obs;
  var activeImage=FindFoodModel("Find Food You Love", "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep", "assets/f1.png").obs;
  final images=[
    FindFoodModel("Find Food You Love", "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep", "assets/f1.png"),
    FindFoodModel("Fast Delivery", "Fast food delivery to your home, office wherever you are", "assets/f2.png"),
    FindFoodModel("Live Tracking", "Real time tracking of your food on the app once you placed the order", "assets/f3.png")
  ];

  void changeIndex(int index)
  {
    activeIndex.value=index;
    activeImage.value=images[index];

  }


}
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fahadshabir/Screens/HomeScreen.dart';
import 'package:fahadshabir/Widgets/mButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Controllers/SlideShowController.dart';

class ImageSlideShow extends StatelessWidget {

  var _c=Get.put(SlideShowController());

  @override
  Widget build(BuildContext context) {
    return GetX<SlideShowController>(
      builder: (controller) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.40,
                    width: double.infinity,
                    child: CarouselSlider.builder(
                      itemCount: controller.images.length,
                      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(controller.images[itemIndex].ImagePath),
                                fit: BoxFit.contain
                              )
                            ),

                          ), options: CarouselOptions(
                      height: MediaQuery.of(context).size.height*0.40,
                      autoPlay: false,
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      initialPage: 0,
                      onPageChanged: (index,reason){
                        controller.changeIndex(index);
                        print("page changed");

                      },
                    ),
                    ),
                  ),
              SizedBox(
                height: 20,
              ),
              AnimatedSmoothIndicator(
                count: controller.images.length,
                activeIndex: controller.activeIndex.value,
                effect: SlideEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.red
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                child: Text(controller.activeImage.value.title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                child:Text(controller.activeImage.value.subTitle,style: TextStyle(fontSize: 15,color: Colors.grey),textAlign: TextAlign.center,),
              ),
               SizedBox(height: MediaQuery.of(context).size.height*0.1,),


              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: (){
                  Get.off(()=>HomeScreen());
                },
                  child: mButton(title: "Next")
              ),
            ],
          ),
        );
      }
    );
  }
}

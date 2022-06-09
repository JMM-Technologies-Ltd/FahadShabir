import 'package:fahadshabir/Widgets/ImageSlideShow.dart';
import 'package:flutter/material.dart';

class FindFood extends StatelessWidget {
  const FindFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(child: ImageSlideShow()),
    );
  }
}

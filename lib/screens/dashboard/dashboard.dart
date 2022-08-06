import 'package:flutter/material.dart';
import 'components/buy_shop.dart';
import 'components/gridview.dart';
import 'components/image_slider.dart';
import 'components/news_box.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Alis'),
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
      //     IconButton(
      //         onPressed: () {}, icon: Icon(Icons.supervised_user_circle)),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.home)),
      //   ],
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.28,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(70),
                          bottomRight: Radius.circular(70),
                        ),
                      ),
                      child: ImageSlider(
                        nameImage: '99.08',
                        nameImage1: '55',
                        nameImage2: '56',
                        nameImage3: '57',
                        nameImage4: '40',
                      ),
                    ),
                    BuyShop(size: size),
                  ],
                ),
              ),
              NewsBox(),
              GridViwe(size: size),
            ],
          ),
        ),
      ),
    );
  }
}

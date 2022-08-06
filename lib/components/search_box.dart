import 'package:alis/controller/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({
    Key? key,
    required this.onChanged,
  }) : super(key: key);
  final ValueChanged onChanged;

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final SearchController searchController = Get.put(SearchController());
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 5, left: 5, bottom: 10),

      /// In AnimSearchBar widget, the width, textController, onSuffixTap are required properties.
      /// You have also control over the suffixIcon, prefixIcon, helpText and animationDurationInMilli
      child: Container(
        width: size.width,
        height: size.height * 0.06,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimSearchBar(
              rtl: true,
              helpText: 'جستجو',
              style: TextStyle(fontFamily: 'IransansDn'),
              width: 320,
              animationDurationInMilli: 700,
              textController: textController,
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
            ),
            // SizedBox(
            //   width: 30,
            // ),
            Spacer(),
            Container(
              margin: EdgeInsets.fromLTRB(15, 5, 0, 5),
              width: size.width * 0.05,
              height: size.height * 0.05,
              child: Icon(CupertinoIcons.line_horizontal_3_decrease),
            ),
          ],
        ),
      ),
    );
  }
}

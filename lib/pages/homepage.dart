import 'package:flutter/material.dart';
import 'package:flutter_01/model/category_model.dart';
import 'package:flutter_01/widgets/search_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategory();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
        appBar: appBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySearchBar(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30.0),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Catgorey",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(height: 15.0),
                Container(
                  height: 150.0,
                  color: Colors.green,
                  child: ListView.builder(itemBuilder: (context, index) {
                    return Container();
                  }),
                )
              ],
            )
          ],
        ));
  }

// ------------------------------   AppBar WIDGET
  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "Breakfast",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(8.0)),
        child: SvgPicture.asset(
          './assets/icon/arrowleft.svg',
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(10.0),
          width: 37.0,
          height: 37.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: SvgPicture.asset('./assets/icon/dots.svg'),
        )
      ],
    );
  }
}

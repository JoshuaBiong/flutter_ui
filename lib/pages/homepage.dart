import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_01/model/category_model.dart';
import 'package:flutter_01/model/deit_section_model.dart';
import 'package:flutter_01/model/popular_model.dart';
import 'package:flutter_01/widgets/search_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<CategoryModel> categories = [];
  List<DietSectionModel> dietSection = [];
  List<PopularModel> popular = [];

  void _getInitialInfo() {
    categories = CategoryModel.getCategory();
    dietSection = DietSectionModel.getDietSection();
    popular = PopularModel.getPopular();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MySearchBar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Category Section ===============
              catergorySection(),
              //Model Section ============================

              const SizedBox(height: 15.0), //sizeBoooox
              myDietSection(),
              const SizedBox(height: 15.0), //sizeBoooox
              myDietSection(),
            ],
          ),
        ],
      ),
    );
  }

  // const SizedBox(height: 20.0), //sizeBoooox
  //           const Padding(
  //             padding: EdgeInsets.only(left: 20.0),
  //             child: Text(
  //               'Recommendation \n for diets',
  //               style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
  //             ),
  //           ),

  SizedBox myDietSection() {
    return SizedBox(
      height: 240,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          children: [
            const Text(
              'Recommendation \n for diets',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
            ),
            ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(
                width: 15.0,
              ),
              itemCount: dietSection.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: categories[index].boxColor.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: SvgPicture.asset(dietSection[index].iconPath),
                      ),
                      Text(
                        dietSection[index].name,
                        style: const TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${dietSection[index].level}|${dietSection[index].calories}|${dietSection[index].duration}',
                            style: const TextStyle(
                                color: Colors.black38,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Container(
                        height: 35.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 148, 195, 233),
                              Color.fromARGB(255, 229, 162, 157)
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'View',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Column catergorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30.0),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Catgorey",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
          height: 150.0,
          // color: Colors.green,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(
              width: 25.0,
            ),
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                decoration: BoxDecoration(
                  color: categories[index].boxColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            // SvgPicture.asset('./assets/icon/pie.svg'),
                            SvgPicture.asset(categories[index].iconPath),
                      ),
                    ),
                    Text(
                      categories[index].name,
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "Breakfast",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: GestureDetector(
        onTap: () {
          if (kDebugMode) {
            print('being tapped');
          }
        },
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: SvgPicture.asset(
            './assets/icon/arrowleft.svg',
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            if (kDebugMode) {
              print('being tapped in action');
            }
          },
          child: Container(
            margin: const EdgeInsets.all(10.0),
            width: 37.0,
            height: 37.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: SvgPicture.asset('./assets/icon/dots.svg'),
          ),
        )
      ],
    );
  }
}

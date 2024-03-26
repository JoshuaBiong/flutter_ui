import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_01/model/category_model.dart';
import 'package:flutter_01/model/deit_section_model.dart';
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

  void _getInitialInfo() {
    categories = CategoryModel.getCategory();
    dietSection = DietSectionModel.getDietSection();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MySearchBar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //-------------------------- Category Section ===============

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30.0),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Catgorey",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w800),
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
                            color: categories[index].boxColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      // SvgPicture.asset('./assets/icon/pie.svg'),
                                      // TODO: always remeber to double or triple check the model data in order to render the SVG assets and avoid the white screen issue again.
                                      SvgPicture.asset(
                                          categories[index].iconPath),
                                ),
                              ),
                              Text(
                                categories[index].name,
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
              // ------------------------------------Model Section ============================
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

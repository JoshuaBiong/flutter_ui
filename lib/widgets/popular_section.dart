import 'package:flutter/material.dart';
import 'package:flutter_01/model/category_model.dart';
import 'package:flutter_01/model/deit_section_model.dart';
import 'package:flutter_svg/svg.dart';

class PopularSection extends StatefulWidget {
  const PopularSection({super.key});

  @override
  State<PopularSection> createState() => _PopularSectionState();
}

class _PopularSectionState extends State<PopularSection> {
  List<DietSectionModel> dietSection = [];
  List<CategoryModel> categories = [];

  void _getInfofromModel() {
    categories = CategoryModel.getCategory();
    dietSection = DietSectionModel.getDietSection();
  }

  @override
  Widget build(BuildContext context) {
    _getInfofromModel();
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
}

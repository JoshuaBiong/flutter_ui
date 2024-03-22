import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff1D1617).withOpacity(0.11),
                      blurRadius: 40,
                      spreadRadius: 0.0),
                ],
              ),
              margin: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.all(15),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset('./assets/icon/Search.svg'),
                  ),
                  suffixIcon: SizedBox(
                    width: 90.0,
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const VerticalDivider(
                            endIndent: 12.0,
                            indent: 12.0,
                            thickness: 1.0,
                            color: Colors.black38,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(15),
                              child:
                                  SvgPicture.asset('./assets/icon/Filter.svg')),
                        ],
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                ),
              ),
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

import 'package:flutter/material.dart';
import 'package:flutter_01/widgets/search_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: const Column(
          children: [MySearchBar()],
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

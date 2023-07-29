import 'package:complex_ui/screen/PopularCourseListView.dart';
import 'package:complex_ui/screen/category_list_vew.dart';
import 'package:complex_ui/screen/design.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DesignCourseHomeScreen extends StatefulWidget {
  const DesignCourseHomeScreen({super.key});

  @override
  State<DesignCourseHomeScreen> createState() => _DesignCourseHomeScreenState();
}

class _DesignCourseHomeScreenState extends State<DesignCourseHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            getAppBarUI(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      getSearchBarUI(),
                      getCategoryUI(),
                      Flexible(
                        child: getPopularCourseUI(),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget getPopularCourseUI() {
  return Padding(
    padding: EdgeInsets.only(top: 8, left: 18, right: 16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Popular Course',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
        Flexible(
          child: PopularCourseListView(),
        ),
      ],
    ),
  );
}

Widget getCategoryUI() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(top: 8, left: 18, right: 16),
        child: Text(
          'Category',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
      SizedBox(
        height: 16,
      ),
      Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Row(
          children: [
            getButtonUI('ui/ux'),
            const SizedBox(
              width: 16,
            ),
            getButtonUI('FrontEnd'),
            const SizedBox(
              width: 16,
            ),
            getButtonUI('Backend'),
          ],
        ),
      ),
      CategoryListView()
    ],
  );
}

Widget getButtonUI(String txt) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
        border: Border.all(color: DesignCourseAppTheme.nearlyBlue),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white24,
          borderRadius: BorderRadius.all(
            Radius.circular(24.0),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 12, bottom: 12, left: 18, right: 18),
            child: Center(
              child: Text(
                txt,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  letterSpacing: 0.27,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget getSearchBarUI() {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, left: 18),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 350,
          height: 64,
          child: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Container(
              decoration: BoxDecoration(
                color: HexColor('#F8FAF8'),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(13.0),
                  bottomLeft: Radius.circular(13.0),
                  topLeft: Radius.circular(13.0),
                  topRight: Radius.circular(13.0),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: DesignCourseAppTheme.nearlyBlue,
                        ),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Search For Course',
                          border: InputBorder.none,
                          helperStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: HexColor('#B9BABC'),
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            letterSpacing: 0.2,
                            color: HexColor('#B9BABC'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Icon(
                      Icons.search,
                      color: HexColor('#B9BABC'),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget getAppBarUI() {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
    child: Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose Your",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  letterSpacing: 0.2,
                  color: DesignCourseAppTheme.grey,
                ),
              ),
              Text(
                "Design Course",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  letterSpacing: 0.27,
                  color: DesignCourseAppTheme.darkText,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 60,
          height: 60,
          child: Image.asset('assets/design_course/userImage.png'),
        )
      ],
    ),
  );
}

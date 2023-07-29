import 'package:complex_ui/screen/data/model.dart';
import 'package:complex_ui/screen/design.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16, bottom: 16),
      child: Container(
        height: 134,
        width: double.infinity,
        child: ListView.builder(
            itemCount: Category.categoryList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return CategoryView();
            }),
      ),
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView(
      {super.key,
      this.callback,
      this.category,
      this.animationController,
      this.animation});
  final VoidCallback? callback;
  final Category? category;
  final AnimationController? animationController;
  final Animation<double>? animation;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      child: SizedBox(
        width: 280,
        child: Stack(
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 48,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: HexColor('#F8FAFB'),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 48 + 24.0,
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 16),
                                    child: Text(
                                      'Course Name',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        letterSpacing: 0.27,
                                        color: DesignCourseAppTheme.darkText,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 8, bottom: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          '4 lesson',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 12,
                                            letterSpacing: 0.27,
                                            color: DesignCourseAppTheme.grey,
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                '4.3',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w200,
                                                    fontSize: 18,
                                                    letterSpacing: 0.27,
                                                    color: DesignCourseAppTheme
                                                        .grey),
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: DesignCourseAppTheme
                                                    .nearlyBlue,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 16, right: 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "25",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            letterSpacing: 0.27,
                                            color:
                                                DesignCourseAppTheme.nearlyBlue,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color:
                                                DesignCourseAppTheme.nearlyBlue,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(8),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Icon(
                                              Icons.add,
                                              color: DesignCourseAppTheme
                                                  .nearlyWhite,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 24,
                  bottom: 24,
                  left: 16,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child:
                            Image.asset('assets/design_course/interFace2.png'),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

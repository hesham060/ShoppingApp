import 'package:flutter/material.dart';
import 'package:shoppingapp/shared/components/component.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../login/login_Screen.dart';

class boardingModel {
  final String? image;
  final String? title;
  final String? body;
  boardingModel(
      {@required this.image, @required this.body, @required this.title});
}

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<boardingModel> Boarding = [
    boardingModel(image: 'assets/pics/on_boarding-1.jpg'),
    boardingModel(title: 'On Boarding Title'),
    boardingModel(body: 'on boarding text '),
  ];
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            defaultText(Function: (){
               navigateAndFinish(context, LoginScreen());
            }, text: 'Skip'),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
              child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (int index) {
                    if (index == Boarding.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                      print('last');
                    } else {
                      setState(() {
                        isLast = false;
                      });
                      print('isnotlast');
                    }
                  },
                  physics: BouncingScrollPhysics(),
                  controller: boardController,
                  itemBuilder: (context, index) =>
                      buildOnBoardingItem(Boarding[index]),
                  itemCount: Boarding.length,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SmoothPageIndicator(
                    controller: boardController,
                    count: Boarding.length,
                    effect: const ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      dotWidth: 10,
                      dotHeight: 10,
                      expansionFactor: 4,
                      spacing: 5.0,
                      activeDotColor: Color(0xff33d9b2),
                    ),
                  ),
                  const Spacer(), // widget used for throw element to the end which app have space
                  FloatingActionButton(
                    onPressed: () {
                      if (isLast) {
                        navigateAndFinish(context, LoginScreen());
                      } else {
                        boardController.nextPage(
                            duration: const Duration(milliseconds: 750),
                            curve: Curves.fastLinearToSlowEaseIn);
                      }
                    },
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              )
            ],
          )),
        ));
  }

  // because we use build onboarding item one time so we refactor it inside same class
  Widget buildOnBoardingItem(boardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                child: Image.asset('lib/assets/pics/onboard-1.jpg'),
              ),
            ),
          ),
          Text(
            '${model.title}',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'jannah2'),
          ),
          SizedBox(
            height: 8,
          ),
          Text('${model.body}',
              style: TextStyle(
                fontSize: 15,
              )),
          SizedBox(
            height: 10,
          ),
        ],
      );
}

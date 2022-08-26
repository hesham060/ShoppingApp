import 'package:flutter/material.dart';

class boardingModel {
  final String? image;
  final String? title;
  final String? body;
  boardingModel(
      {@required this.image, @required this.body, @required this.title});
}

class OnBoardingScreen extends StatelessWidget {
  var boardController = PageController();
  List<boardingModel> Boarding = [
    boardingModel(image: 'assets/pics/on_boarding-1.jpg'),
    boardingModel(title: 'On Boarding Title'),
    boardingModel(body: 'on boarding text '),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
              child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  physics:BouncingScrollPhysics(),
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
                  Text(
                    'Indicator',
                    style: TextStyle(fontSize: 25),
                  ),
                  Spacer(), // widget used for throw element to the end which app have space
                  FloatingActionButton(
                    onPressed: () {
                      boardController.nextPage(
                          duration: Duration(milliseconds: 750),
                          curve: Curves.fastLinearToSlowEaseIn);
                    },
                    child: Icon(Icons.arrow_forward_ios),
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
            child: Container(
              child: Image.asset('lib/assets/pics/onboard-1.jpg'),
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

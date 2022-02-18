import 'package:flutter/material.dart';
import 'package:flutter_application_1/Age_calculator/ageCalculator.dart';
import 'package:flutter_application_1/globalVariale/globalVariable.dart';

class ShowAge extends StatefulWidget {
  const ShowAge({Key? key}) : super(key: key);

  @override
  _ShowAgeState createState() => _ShowAgeState();
}

class _ShowAgeState extends State<ShowAge> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Text(
                  'Age Calculate',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 20,
                        shadowColor: Colors.black,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.black,
                            child: Container(
                              padding: EdgeInsets.all(30),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Age",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: AgeCalculator.age(
                                                        selectedBithDate,
                                                        today:
                                                            selectedCurrentDate)
                                                    .years
                                                    .toString(),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 28),
                                              ),
                                              TextSpan(
                                                text: ' Years   ',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                              TextSpan(
                                                text: "${AgeCalculator.age(
                                                  selectedBithDate,
                                                  today: selectedCurrentDate,
                                                ).months.toString()}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 28),
                                              ),
                                              TextSpan(
                                                text: ' Months  ',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                              TextSpan(
                                                text:
                                                    '${AgeCalculator.age(selectedBithDate, today: selectedCurrentDate).days.toString()}',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 28),
                                              ),
                                              TextSpan(
                                                text: ' Days',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(.6),
                                      spreadRadius: 1,
                                      blurRadius: 3)
                                ]),
                            child: Column(
                              children: [
                                Text(
                                  ' Wait For Your Next Birthday',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w200),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: AgeCalculator
                                                    .timeToNextBirthday(
                                                        selectedBithDate,
                                                        fromDate:
                                                            selectedCurrentDate)
                                                .months
                                                .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28),
                                          ),
                                          TextSpan(
                                            text: ' Months  ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal),
                                          ),
                                          TextSpan(
                                            text: AgeCalculator
                                                    .timeToNextBirthday(
                                                        selectedBithDate,
                                                        fromDate:
                                                            selectedCurrentDate)
                                                .days
                                                .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28),
                                          ),
                                          TextSpan(
                                            text: ' Days',
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  ' LuckyDay ::  ${AgeCalculator.findDayName().toString()}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 20),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Spacer(),

              Card(
                // color: Colors.amber,
                margin: EdgeInsets.symmetric(horizontal: 20),
                elevation: 10,
                shadowColor: Colors.black,
                child: Card(
                  // color: Colors.green,
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        // color: Color(0xff90dce2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Text(
                          "How Many Times In The Earth",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'year',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    Text(
                                      AgeCalculator.age(selectedBithDate,
                                              today: selectedCurrentDate)
                                          .years
                                          .toString(),
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Weeks",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    Text(
                                      (AgeCalculator.age(selectedBithDate,
                                                      today:
                                                          selectedCurrentDate)
                                                  .years *
                                              52)
                                          .toString(),
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Months",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    Text(
                                      (AgeCalculator.age(selectedBithDate,
                                                      today:
                                                          selectedCurrentDate)
                                                  .years *
                                              12)
                                          .toString(),
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Hours",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    Text(
                                      AgeCalculator.hoursBetween(
                                              selectedBithDate,
                                              selectedCurrentDate)
                                          .toString(),
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Days",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    Text(
                                      AgeCalculator.daysBetween(
                                              selectedBithDate,
                                              selectedCurrentDate)
                                          .toString(),
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Minutes",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    Text(
                                      AgeCalculator.minutesBetween(
                                              selectedBithDate,
                                              selectedCurrentDate)
                                          .toString(),
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.amber,
                elevation: 100,
                shadowColor: Colors.black,
                child: Container(
                  child: MaterialButton(
                    color: Colors.white,
                    padding: EdgeInsets.all(20),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Re-Calculate",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10)
            ],
          ),
        ));
  }
}

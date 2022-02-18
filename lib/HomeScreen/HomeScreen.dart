import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomeScreen/CalculatorPage.dart';
import 'package:flutter_application_1/Model/dateFormate.dart';
import 'package:flutter_application_1/globalVariale/globalVariable.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true, backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Calculate Your Age',
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: SweepGradient(colors: [
                  Colors.pink.shade400,
                  Colors.black.withOpacity(.6),
                  Colors.blue.withOpacity(.8),
                  Colors.indigo,
                  Colors.purple.withOpacity(.8),
                  Colors.red
                ], center: Alignment.bottomLeft, startAngle: 1, endAngle: 7),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70))),
          ),
          toolbarHeight: 50,
          elevation: 0.0),
      // backgroundColor: Color.fromARGB(255, 173, 70, 70),
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              color: Colors.white38.withOpacity(.8),
              borderRadius: BorderRadius.only()),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                height: 200,
                color: Colors.amber,
                child: Image(
                    image: NetworkImage(
                        'https://media.istockphoto.com/vectors/man-grow-life-cycle-vector-vector-id1171409747')),
              ),
              Center(
                child: Container(
                  child: Text(
                    'কত দিন হলো পৃথিবীতে ?',
                    style: TextStyle(
                      fontSize: 22,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'rrr',
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // Spacer(),

              Text('Select date of birth',
                  style: TextStyle(fontSize: 20, fontFamily: 'rrr')),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () =>
                    _selectDate(context, selectedBithDate, "BirthDate"),
                child: Container(
                    // height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Color.fromARGB(255, 119, 209, 194),
                    ),
                    width: 300,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${getFormatedDate(selectedBithDate)}",
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.arrow_drop_down_outlined)
                      ],
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Select today\'s date', style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 10,
              ),

              MaterialButton(
                onPressed: () =>
                    // _selectDate(context, selectedBithDate, "BirthDate"),
                    _selectDate(context, selectedCurrentDate, "CurrentDate"),
                child: Container(
                    // height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Color.fromRGBO(141, 172, 226, 1),
                    ),
                    width: 300,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${getFormatedDate(selectedCurrentDate)}",
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.arrow_drop_down_outlined)
                      ],
                    )),
              ),

              SizedBox(
                height: 30,
              ),
              Container(
                child: MaterialButton(
                  child: Container(
                    width: 200,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.greenAccent),
                    child: Center(
                        child:
                            Text("Calculate", style: TextStyle(fontSize: 20))),
                  ),
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => ShowAge());
                    Navigator.push(context, route);
                  },
                ),
              ),
              SizedBox(
                height: 50,
              )
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  //This function used for open date picker
  Future<void> _selectDate(
      BuildContext context, DateTime initialDate, String from) async {
    if (from == 'BirthDate') {
      final DateTime? pickedBirthDate = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2101),
      );
      if (pickedBirthDate != null && pickedBirthDate != selectedBithDate)
        setState(() {
          selectedBithDate = pickedBirthDate;
        });
    }
    if (from == "CurrentDate") {
      final DateTime? pickedCurrentDate = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2101),
      );

      if (pickedCurrentDate != null && pickedCurrentDate != selectedCurrentDate)
        setState(() {
          selectedCurrentDate = pickedCurrentDate;
        });
    }
  }
}

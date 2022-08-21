import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  String ans = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Midterm Exam'),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/thermo.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Temperature Converter',
                      style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white, //สีพื้นหลังของ Container
                    border: Border.all(
                      width: 5.0,
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: [
                          TextField(
                            textAlign: TextAlign.start,
                            controller: _controller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'Enter a temperature value to convert',
                            ),
                          ),
                          Padding(padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                child: Text('Celsius to Fahrenheit'),
                                onPressed: () {
                                  setState(() {
                                    var input = double.tryParse(_controller.text);
                                    double output = 0;

                                    if (input == null) {
                                      ans = "Input Error !!!";
                                    } else {
                                      output = ((9 / 5) * input) + 32;
                                      ans = "${input} Celsius = ${output} Fahrenheit";
                                    }
                                  });
                                  print(ans);
                                },
                              ),
                              Padding(padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),),
                              ElevatedButton(
                                child: Text('Celsius to Kelvin'),
                                onPressed: () {
                                  setState(() {
                                    var input = double.tryParse(_controller.text);
                                    double output = 0;

                                    if (input == null) {
                                      ans = "Input Error !!!";
                                    } else {
                                      output = input + 273;
                                      ans = "${input} Celsius = ${output} Kelvin";
                                    }
                                  });
                                  print(ans);
                                },
                              ),
                            ],
                          ),
                          Padding(padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                child: Text('Fahrenheit to Celsius'),
                                onPressed: () {
                                  setState(() {
                                    var input = double.tryParse(_controller.text);
                                    double output = 0;

                                    if (input == null) {
                                      ans = "Input Error !!!";
                                    } else {
                                      output = (5 / 9) * (input - 32);
                                      ans = "${input} Fahrenheit = ${output} Celsius";
                                    }
                                  });
                                  print(ans);
                                },
                              ),
                              Padding(padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),),
                              ElevatedButton(
                                child: Text('Fahrenheit to Kelvin'),
                                onPressed: () {
                                  setState(() {
                                    var input = double.tryParse(_controller.text);
                                    double output = 0;

                                    if (input == null) {
                                      ans = "Input Error !!!";
                                    } else {
                                      output = ((5 / 9) * (input - 32)) + 273;
                                      ans = "${input} Fahrenheit = ${output} Kelvin";
                                    }
                                  });
                                  print(ans);
                                },
                              ),
                            ],
                          ),
                          Padding(padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                child: Text('Kelvin to Celsius'),
                                onPressed: () {
                                  setState(() {
                                    var input = double.tryParse(_controller.text);
                                    double output = 0;

                                    if (input == null) {
                                      ans = "Input Error !!!";
                                    } else {
                                      output = input - 273;
                                      ans = "${input} Kelvin = ${output} Celsius";
                                    }
                                  });
                                  print(ans);
                                },
                              ),
                              Padding(padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),),
                              ElevatedButton(
                                child: Text('Kelvin to Fahrenheit'),
                                onPressed: () {
                                  setState(() {
                                    var input = double.tryParse(_controller.text);
                                    double output = 0;

                                    if (input == null) {
                                      ans = "Input Error !!!";
                                    } else {
                                      output = ((9 / 5) * (input - 273)) + 32;
                                      ans = "${input} Kelvin = ${output} Fahrenheit";
                                    }
                                  });
                                  print(ans);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ans,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
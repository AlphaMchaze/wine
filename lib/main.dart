import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WINE',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WINE',
             style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,)),
            centerTitle: true,
            backgroundColor:
                const Color(0xFFF1F3F7), // Set app bar background color
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Logo
              Padding(
                padding: const EdgeInsets.only(
                  left: 90,
                ),
                child: Image.asset(
                  'images/logo.png',
                  width: 90.0,
                  height: 100.0,
                ),
              ),
        
              // Container with circle avatar
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  width: 300.0,
                  height: 280.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 252, 252, 252),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(55)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(3.0, 3.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                      const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-3.0, -3.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0),
                    ],
                  ),
                  child: const Center(
                    child: CircleAvatar(
                      radius: 120.0,
                      backgroundColor: Color(0xFF042449),
                      child: Text(
                        'Results',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor:
              const Color(0xFFF1F3F7), 
          bottomNavigationBar: Container(
            height: 150.0,
            decoration: const BoxDecoration(
              color:  Color(0xFFFAFAFA),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 80.0,
                        height: 80.0,
                        decoration:const BoxDecoration(
                          gradient: LinearGradient(
                            colors:[
                                Color(0xFFF97b81),
                                Color(0xFFFC968B),
                                Color(0xFFFEAA94),
                                Color(0xFFFEB095)
                            ],
                            stops: [0.1,0.5,0.7,1.0],
                            begin:Alignment.bottomRight,
                            end: Alignment.topLeft,
                             ),
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(20.0)),
                        ),
                        child: const Center(
                          child: Text(
                            'PH',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 80.0,
                        height: 80.0,
                        decoration:const BoxDecoration(
                          gradient: LinearGradient(
                            colors:[
                                Color(0xFF5B62DE),
                                Color(0xFF7287E7),
                                Color(0xFF788DE8),
                            ],
                            stops: [0.3,0.7,1.2,],
                            begin:Alignment.bottomRight,
                            end: Alignment.topLeft,
                             ),
                          borderRadius:
                              BorderRadius.only(bottomLeft: Radius.circular(20)),
                        ),
                        child: const Center(
                          child: Text('TDS',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )),
                        ),
                      ),
                      Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: const BoxDecoration(
                           gradient: LinearGradient(
                            colors:[
                                Color(0xFFFF568B),
                                Color(0xFFFF82A9),
                                Color(0xFFFD8AAE),
                            ],
                            stops: [0.4,0.8,1.5,],
                            begin:Alignment.bottomRight,
                            end: Alignment.topLeft,
                             ),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(20)),
                        ),
                        child: const Center(
                          child: Text('EC',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )),
                        ),
                      ),
                      Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: const BoxDecoration(
                           gradient: LinearGradient(
                            colors:[
                                Color(0xFFFE7723),
                                Color(0xFFF9F7EB),
                                Color(0xFFFB8283),
                            ],
                            stops: [0.2,0.4,1.0,],
                            begin:Alignment.bottomLeft,
                            end: Alignment.topRight,
                             ),
                          borderRadius:
                              BorderRadius.only(bottomRight: Radius.circular(20)),
                        ),
                        child: const Center(
                          child: Text('Turbidity',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Text 1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )),
                    Text('Text 2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )),
                    Text('Text 3',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )),
                    Text('Text 4',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

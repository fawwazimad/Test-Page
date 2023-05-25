// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'SegueUI',
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        Locale("en", ""),
        Locale("ar", "JO"),
      ],
      localeResolutionCallback: (currentLang, supportLang) {
        if (currentLang != null) {
          for (Locale locale in supportLang) {
            if (locale.languageCode == currentLang.languageCode) {
              return currentLang;
            }
          }
        }
        return supportLang.first;
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Text(
                          'بوصلة المناسبات',
                          style: TextStyle(
                            fontSize: 20,
                            height: 2,
                            color: Color.fromARGB(255, 59, 74, 84),
                            decorationColor: Color.fromARGB(255, 59, 74, 84),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 44.0),
                        child: Text(
                          '24 مايو 2023',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 59, 74, 84),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Card(
                    child: Icon(
                      Icons.notifications_none,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: Card(
                color: Color.fromARGB(255, 233, 234, 238),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'البحث عن مناسبة',
                    hintStyle: TextStyle(height: 3, fontSize: 15,),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    suffixIcon: Icon(Icons.filter_alt_outlined, color: Colors.grey),
                  ),
                ),
              ),
            ),//SearchBar
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'images/wedding.jpeg',
                    ),
                  ),
                ),
                Container(
                  width: 10.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 1, 70, 129),
                  ),
                )
              ],
            ),//Image and Dot
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'مناسبات قادمة',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 3.0,
                      color: Color.fromARGB(255, 1, 70, 129),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'مصالح ذات صلة',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20, width: 5),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage('images/cardBackground.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 50),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text('افتتاح تطبيق بوصلة المناسبات'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 120.0),
                                    child: Text('بوصلة المناسبات'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 130.0),
                                    child: Text('افتتاح التطبيق'),
                                  ),
                                ],
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                color: Colors.white70,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text('سبتمبر'),
                                      Text(
                                        '15',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 1, 70, 129),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            color: Colors.white70,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('عمان,عمان قاعة البيلسان'),
                                  Row(
                                    children: [
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 1, 70, 129),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color.fromARGB(255, 1, 70, 129),
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.map_outlined,
                                          size: 20.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 1, 70, 129),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color.fromARGB(255, 1, 70, 129),
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.notification_add,
                                          size: 20.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings),
                SizedBox(width: 10),
                Icon(Icons.person),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'إضافة اعلان  ',
                ),
                Icon(
                  Icons.add_circle_outlined,
                  color: Color.fromARGB(255, 1, 70, 129),
                ),
              ],
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

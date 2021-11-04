import 'package:flutter/material.dart';
import 'package:ui_data_table/data_table2.dart';
import 'package:ui_data_table/home_screen.dart';

//https://www.youtube.com/watch?v=DupniuA45l4&ab_channel=MobileProgrammer
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data Table',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.orange[100],
        //appBarTheme:
      ),
      darkTheme: ThemeData.dark(),
      //home: const MyHomePage(title: 'Data Table'),
      //home: DataTable2(),
      home: HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center();
  }
}

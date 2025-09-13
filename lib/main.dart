import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity,),
          Text('Calender',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 26,
            color: Colors.white
          ),
          ),
         GestureDetector(
  onTap: () async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      //initialDate: DateTime.now(),
      firstDate: DateTime(2000),  // earliest selectable date
      lastDate: DateTime(2100),   // latest selectable date
    );

    if (pickedDate == null) {
  Get.snackbar('No Date Selected', "Please pick a date!");
} else {
  // Handle the picked date, e.g.:
  print('Selected date: $pickedDate');
  // Or update a controller/state variable
}

  },
  child: Icon(
    Icons.calendar_month,
    size: 30,
    color: Colors.white,
  ),
)

        ],
      ),
    );
  }
}
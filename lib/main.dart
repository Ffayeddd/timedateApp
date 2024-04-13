import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//package 5asa bl wa2t

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: timedateApp(),
    );
  }
}

class timedateApp extends StatefulWidget {
  const timedateApp({super.key});

  @override
  State<timedateApp> createState() => _timedateAppState();
}

class _timedateAppState extends State<timedateApp> {
  // String year = "";
  // String dayNum = "";
  // String month = "";
  // String weekday="";
  //time
  // int hour=0;
  String weekday = "";
  String date = "";
  String timeNow = "";
  // String amORpm ="am";

  changeEverySec() {
    //bt8ayr elwa2t kol sanya
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        weekday = DateFormat("EEEE").format(DateTime.now());
        //tb3 el package
        date = DateFormat("MMM d , y").format(DateTime.now());
        timeNow = DateFormat('hh : mm : ss a').format(DateTime.now());
        //time
        // hour= DateTime.now().hour;
        // if (hour > 12){
        //   hour=hour - 12;
        //   amORpm ="pm";
        //
        // }
        // min=DateTime.now().minute.toString();
        // sec=DateTime.now().second.toString();
        //
        //
        //
        // //date
        // year = DateTime.now().year.toString();
        // dayNum = DateTime.now().day.toString();
        // weekday= DateTime.now().weekday.toString();
        // switch(weekday){
        //   case "1": //b7ot '' 34an el type string
        //     weekday="monday";
        //     break;
        //   case "2": // el 7d =7 aked
        //     weekday= "thursday";
        //     break;
        //   default:
        //     print("a300000");
        //     break;
        // }
        // month = DateTime.now().month.toString();
        //
        // switch(month){
        //   case "1":
        //     month= "jan";
        //     break;
        //   case "2":
        //     month= "feb";
        //     break;
        //   case "3":
        //     month= "mar";
        //     break;
        //   case "4":
        //     month= "apr";
        //     break;
        //   case "5":
        //     month= "may";
        //     break;
        //   case "6":
        //     month= "jun";
        //     break;
        //   case "7":
        //     month= "jul";
        //     break;
        //   case "8":
        //     month= "aug";
        //     break;
        //   case "9":
        //     month= "sep";
        //     break;
        //   case "10":
        //     month= "oct";
        //     break;
        //   case "11":
        //     month= "nov";
        //     break;
        //   case "12":
        //     month= "dec";
        //     break;
        //
        //   default:
        //     print("a3ooo");
        //     break;
        // }
      });
    });
  }

  String qqq = "";
  callonlyonetimeafter7sec() {
    Timer(const Duration(seconds: 7), () {
      setState(() {
        qqq = "hiiiiiii";
      });
    });
  }

  @override
  //awl m ash8l el app t4t8l
  // called once when your app is starting for first time
  void initState() {
    // TODO: implement initState
    super.initState();
    changeEverySec();
    callonlyonetimeafter7sec();
  }

  @override
  //el build de elly bt48l el codes
  //hot reload bt48l elmaktoub fe el build bs !!!!!!
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Time & Date App",
          style: TextStyle(
            fontSize: 27,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 57, 73, 80),
      ),
      backgroundColor: const Color.fromARGB(255, 33, 40, 43),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Todays Date is $weekday",
              style: const TextStyle(fontSize: 27, color: Colors.white),
            ),
            const SizedBox(
              height: 22,
            ),

            // Text("$month $dayNum,$year",
            //   style:  const TextStyle(fontSize: 27,
            //       color:Colors.white ),),
            Text(
              date,
              style: const TextStyle(
                fontSize: 27,
                color: Colors.brown,
              ),
            ),
            const SizedBox(
              height: 22,
            ),

            // Text("${hour.toString()} : ${min.padLeft(2,"0")}  // el 3rd 2 gehat el left:$sec $amORpm ",
            //   style: const TextStyle(fontSize: 27,
            //       color:Colors.white ),)
            Text(
              timeNow,
              style: const TextStyle(fontSize: 27, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

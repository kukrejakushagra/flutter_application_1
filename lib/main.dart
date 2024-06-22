import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/theme/dark_mode.dart';
import 'package:flutter_application_1/theme/light_mode.dart';
import 'package:gap/gap.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'theme/theme_provider.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habit Tracker', //This name will show when clicked on recent apps
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const HomePage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 1;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     initialization();
//   }

//   void initialization() async {
//     // This is where you can initialize the resources needed by your app while
//     // the splash screen is displayed.  Remove the following example because
//     // delaying the user experience is a bad design practice!
//     // ignore_for_file: avoid_print
//     await Future.delayed(const Duration(seconds: 0));
//     FlutterNativeSplash.remove();
//   }

//   bool isChecked = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Color(0xFFBEE2D7),
//         //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text('Habit Tracker'),
//       ),

//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.

//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have following number of habits',
//               style: TextStyle(
//                 fontFamily: 'Sans',
//                 letterSpacing: 4.0,
//               ),
//             ),
//             IconButton(
//                 onPressed: () {
//                   setState(() {
//                     isChecked = !isChecked;
//                   });
//                 },
//                 icon: Icon(
//                   Icons.check,
//                   size: 20,
//                   color: isChecked
//                       ? const Color.fromARGB(255, 41, 40, 40)
//                       : Color.fromARGB(255, 50, 185, 151),
//                 )),
//             const Gap(20),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             const Gap(100),
//             const Text(
//               'That\'s a lot',
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Create a new habit',
//         backgroundColor: Color.fromARGB(255, 211, 110, 110),
//         child: const Icon(Icons.add_alarm_sharp),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

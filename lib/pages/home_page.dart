import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
          backgroundColor: Theme.of(context).colorScheme.surface,
          child: Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Dark Mode'),
                        Center(
                            child: CupertinoSwitch(
                          value: Provider.of<ThemeProvider>(context).isDarkMode,
                          onChanged: (value) =>
                              Provider.of<ThemeProvider>(context, listen: false)
                                  .toggleTheme(),
                        )),
                        // Center(
                        //     child: CupertinoSwitch(
                        //   value: Provider.of<ThemeProvider>(context).isDarkMode,
                        //   onChanged: (value) =>
                        //       Provider.of<ThemeProvider>(context, listen: false)
                        //           .toggleTheme(),
                        // )),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}

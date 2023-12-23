import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ThemeData _lightTheme = ThemeData.light();
  final ThemeData _darkTheme = ThemeData.dark();
  ThemeData _currentTheme = ThemeData.light();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _currentTheme.colorScheme.background,
         body: Center(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               ElevatedButton(
                   onPressed: (){
            setState(() {
              _currentTheme = _darkTheme;
            });
                   },
                 style: ButtonStyle(
                   minimumSize: MaterialStateProperty.all(const Size(60, 60)),
                   backgroundColor: MaterialStateProperty.all(_lightTheme.colorScheme.background,)
                 ),
                 child: Text("Light Mode",
                 style: TextStyle(
                   color: _lightTheme.colorScheme.primary,
                 ),
               ),
               ),
              const SizedBox(width: 25,),
               ElevatedButton(
                 onPressed: (){
                   setState(() {
                     _currentTheme = _lightTheme;
                   });
                 },
                 style: ButtonStyle(
                     minimumSize: MaterialStateProperty.all(const Size(60, 60)),
                     backgroundColor: MaterialStateProperty.all(_darkTheme.colorScheme.background,)
                 ),
                 child: Text("Dark Mode",
                   style: TextStyle(
                     color: _darkTheme.colorScheme.primary,
                   ),
                 ),
               ),
             ],
           ),
         ),
    );
  }
}


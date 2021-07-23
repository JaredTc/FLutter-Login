import 'package:flutter/material.dart';


class Themes extends StatelessWidget {
  final ValueNotifier<ThemeMode> _notifier = ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: _notifier,
      builder: (_, mode, __) {
        return MaterialApp(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: mode, // Decides which theme to show, light or dark.
          home: Scaffold(
            body: Column(
              
              children: <Widget>[
                  Container(
                     padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                     child: ElevatedButton(
                onPressed: () => _notifier.value = mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
                child: Icon(Icons.remove_red_eye),
              ),
                  ),
            
              ],
             
              
              
            ),
             
          
          
          ),

          
        );
                 
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:locale_data_app/pages/file_demo_page.dart';
import 'package:locale_data_app/pages/secure_storage_demo_page.dart';
import 'package:locale_data_app/pages/shared_preferences_demo_page.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      var navigator = Navigator.of(context);
                      navigator.push(
                        MaterialPageRoute(
                          builder: (context) => SharedPreferencesDemoPage(),
                        ),
                      );
                    },
                    child: Text("SharedPreferences Demo"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecureStorageDemoPage(),
                        ),
                      );
                    },
                    child: Text("SecureStorage Demo"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FileDemoPage(),
                        ),
                      );
                    },
                    child: Text("File Demo"),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:github_user_flutter/custom_list_item.dart';
import 'package:github_user_flutter/src/config/routes/app_routes.dart';
import 'package:github_user_flutter/src/config/theme/app_theme.dart';
import 'package:github_user_flutter/src/core/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kMaterialAppTitle,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
      theme: AppTheme.light,
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: kMaterialAppTitle,
//       onGenerateRoute: AppRoutes.onGenerateRoutes,
//       theme: AppTheme.light,
//       home: const MyHomePage(title: 'Github User'),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _getHttp() async {
    try {
      var response = await Dio().get('http://www.google.com');
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // getHttp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomListItemOne(
                user: 'Flutter',
                viewCount: 999000,
                thumbnail:
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network("https://avatars.githubusercontent.com/u/1?v=4")),
                title: 'The Flutter YouTube Channel',
              ),
              CustomListItemOne(
                user: 'Dash',
                viewCount: 884000,
                thumbnail: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network("https://avatars.githubusercontent.com/u/1?v=4")),
                title: 'Announcing Flutter 1.0',
              ),
              CustomListItemTwo(
                thumbnail: Container(
                  decoration: const BoxDecoration(color: Colors.blue),
                ),
                title: 'Flutter 1.0 Launch',
                subtitle:
                    'Flutter continues to improve and expand its horizons. '
                    'This text should max out at two lines and clip',
                author: 'Dash',
                publishDate: 'Dec 28',
                readDuration: '5 mins',
              ),
              CustomListItemTwo(
                thumbnail: Container(
                  decoration: const BoxDecoration(color: Colors.blue),
                ),
                title: 'Flutter 1.2 Release - Continual updates to the framework',
                subtitle: 'Flutter once again improves and makes updates.',
                author: 'Flutter',
                publishDate: 'Feb 26',
                readDuration: '12 mins',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getHttp,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

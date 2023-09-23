import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          actions: [Icon(Icons.search)],
        ),
        body: HomeScreen(),
        bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),
      label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
              label: "shop"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),
              label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined),
              label: "Profile"),
        ],),
      ),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [ListTile(
        leading: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeUOpRWqVzMgJAwkL1DCZogdkJAkDxu1lfLA&usqp=CAU"),
        title: Text("PULLOVER"),
        subtitle: Text("Blue"),
      ),
          Padding(
            padding: const EdgeInsets.only(left: 300,top: 200),
            child: CircleAvatar(child: Icon(Icons.favorite_border),),
          )
    ])
    ;
  }
}






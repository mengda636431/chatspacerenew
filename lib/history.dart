import 'package:flutter/material.dart';

void main() {
  runApp(
    const Center(
      child: Text(
        '暂无历史记录',
        textDirection: TextDirection.ltr,
        selectionColor: Colors.indigoAccent,
      ),
    ),
  );
}
//搜索框
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('树洞'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text('欢迎'),
          ),
        ],
      ),
    );
  }
}

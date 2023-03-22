import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: FloatingActionButton(
                child: const Text('设置'),
                // 打开第二个页面
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondPage()),
                  );
                })));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("设置"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                  child: const Text('投稿'),
                  // 回退到第一个页面
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              MaterialButton(
                  child: Text('字体设置'),
                  // 以无参形式打开第三个页面，并从堆栈中移除当前页面
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThreePage('字体设置')));
                  }),
              MaterialButton(
                  onPressed: () {
                    // 以有参形式打开第三个页面
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThreePage('夜色设置')));
                  },
                  child: const Text('颜色设置'))
            ],
          ),
        ));
  }
}

class ThreePage extends StatelessWidget {
  String name;

  ThreePage(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('退出登录'),
          centerTitle: false,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   MaterialButton(
                      onPressed: () => Navigator.pop(context), child: Text('退出登录')),
                   Text(name)
                ])));
  }
}

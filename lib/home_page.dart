import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'person_page.dart';
import 'home_page.dart';
import 'pubulicate.dart';
import 'signup_page.dart';

class HomePage extends StatelessWidget{
  static String tag="home_page";

  @override
  Widget build(BuildContext context) {
    const user=Hero(
      tag: "Administrator",
      child: Padding(
        padding: EdgeInsets.all(20.0),//所有方向均填充20像素空白
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/timg.jpg"),
        ),
      ),
    );


    const info=Padding(//其他文字提示
      padding: EdgeInsets.all(8.0),
      child: Text(
        "欢迎来到树洞！",
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
    );

    final body=Container(//body主要内容
      width: MediaQuery.of(context).size.width,//设置为屏幕宽度
      padding: const EdgeInsets.all(28.0),//上下左右各填充28空白像素
      decoration: const BoxDecoration(
          gradient: LinearGradient(//线性渐变
              colors: [
                Colors.green,//蓝
                Colors.lightGreenAccent//绿偏黄的颜色
              ]
          )
      ),
      child: Column(children: const <Widget>[//将上面定义的子空间全部添加进去
        user, info,
      ],),
    );

    return Scaffold(
      body: body,
    );
  }

}

class PageFUl_ extends StatefulWidget {
  @override
  _PageFUlState createState() => _PageFUlState();
}

class _PageFUlState extends State<PageFUl_> {
  int current = 0;
  late PageController coller;
  @override
  void initState() {

    super.initState();
    coller  =  PageController(initialPage: current);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                current != 0 ? Icons.home_outlined : Icons.home,
                color: current == 0 ? Colors.orange : Colors.grey,
              ),
              title: Text(
                "大家的树洞",
                style: TextStyle(
                    color: current != 0 ? Colors.grey : Colors.orange),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                current != 1 ? Icons.contact_mail_outlined : Icons.contact_mail,
                color: current == 1 ? Colors.orange : Colors.grey,
              ),
              title: Text(
                "我的树洞",
                style: TextStyle(
                    color: current != 1 ? Colors.grey : Colors.orange),
              ),
            ),
          ],
          onTap: (position) {
            setState(() {
              current = position;
              coller.animateToPage(current, duration: Duration(milliseconds:200), curve: Curves.ease);
            });
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: PageView(
            controller:coller ,
            scrollDirection: Axis.horizontal,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: GestureDetector(
                    child: const Opacity(
                        opacity: 0.3,
                        child: Image(
                          image: AssetImage("images/me_record.jpeg"),
                          fit: BoxFit.cover,
                        )),
                    onTap: () {
                      print('当前头像是本人～');
                    },
                  )),
              PhysicalModel(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                        child: Center(
                          child: Text(
                            "树洞",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
            onPageChanged: (position) {
              setState(() {
                current = position;
              });
            },
          ),
        ));
  }
}


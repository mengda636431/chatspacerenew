import 'package:flutter/material.dart';
import 'home_page.dart';
//登录界面
class LoginPage extends StatefulWidget {

  static String tag = 'login-page';

  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(//飞行动画
      tag: 'hero',
      child: CircleAvatar(//圆形图片组件
        backgroundColor: Colors.transparent,//透明
        radius: 48.0,//半径
        child: Image.asset("assets/logo.png"),//图片
      ),
    );

    final email = TextFormField(//用户名
      keyboardType: TextInputType.emailAddress,
      autofocus: false,//是否自动对焦
      initialValue: '15165361944',//默认输入的类容
      decoration: InputDecoration(
          hintText: '请输入用户名',//提示内容
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),//上下左右边距设置
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0)//设置圆角大小
          )
      ),
    );

    final password = TextFormField(//密码
      autofocus: false,
      initialValue: '123456',
      obscureText: true,
      decoration: InputDecoration(
          hintText: '请输入密码',
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0)
          )
      ),
    );

    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),//上下各添加16像素补白
      child: Material(
        borderRadius: BorderRadius.circular(30.0),// 圆角度
        shadowColor: Colors.lightBlueAccent.shade100,//阴影颜色
        elevation: 5.0,//浮动的距离
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){
            Navigator.of(context).pushNamed(HomePage.tag);//点击跳转界面
          },
          color: Colors.green,//按钮颜色
          child: const Text('登 录', style: TextStyle(color: Colors.white, fontSize: 20.0),),
        ),
      ),
    );

    final forgotLabel = FloatingActionButton(
      child: const Text('忘记密码?', style: TextStyle(color: Colors.black54, fontSize: 18.0),),
      onPressed: () {},
    );

    final singup = FloatingActionButton(
      child: const Text('注册?', style: TextStyle(color: Colors.black54, fontSize: 18.0),),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(//将这些组件全部放置在ListView中
          shrinkWrap: true,//内容适配
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),//左右填充24个像素块
          children: <Widget>[
            logo,
            const SizedBox(height: 48.0,),//用来设置两个控件之间的间距
            email,
            const SizedBox(height: 8.0,),
            password,
            const SizedBox(height: 24.0,),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }

}

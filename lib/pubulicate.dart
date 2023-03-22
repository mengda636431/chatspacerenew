import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: const <Widget>[
          // 普通输入框
          TextField(),
          SizedBox(height:20),
          // 单行文本输入框
          TextField(
            decoration: InputDecoration(
                hintText: "请输入标题",
                border:OutlineInputBorder()
            ),
          ),
          SizedBox(height:20),
          // 多行文本输入框
          TextField(
            maxLines: 4,
            decoration:InputDecoration(
                hintText:"请输入正文",
                border:OutlineInputBorder()
            ),
          ),
        ],
      )
    );
  }
}

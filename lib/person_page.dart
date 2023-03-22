import 'package:flutter/material.dart';
import 'history.dart';
import 'message.dart';
import 'favorites.dart';
import 'settings.dart';

/*扁平按钮*/
class FlatButn extends StatelessWidget {
  const FlatButn({Key? key}) : super(key: key);

  _log() {
    print("hello");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: _log,
      child: const Text("历史"),
      color: Colors.blue,
      textColor: Colors.black,
      shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
 @override
 Widget build(BuildContext context) {
  return MaterialButton(
    onPressed: _log,
    child: const Text("信箱"),
    color: Colors.blue,
    textColor: Colors.black,
    shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.white,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8)),
  );
}

 @override
 Widget build(BuildContext context) {
  return MaterialButton(
    onPressed: _log,
    child: const Text("设置"),
    color: Colors.blue,
    textColor: Colors.black,
    shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.white,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8)),
  );
}
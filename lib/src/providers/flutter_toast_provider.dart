import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastProvider extends StatefulWidget {
  final Widget child;

  FlutterToastProvider({Key key, this.child}) : super(key: key);

  @override
  _FlutterToastProviderState createState() => _FlutterToastProviderState();
}

class _FlutterToastProviderState extends State<FlutterToastProvider> {
  @override
  void initState() {
    super.initState();
    FToast().init(context);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
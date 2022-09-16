import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:febu/febu.dart';
import 'package:fluttertoast/fluttertoast.dart';

final RouteObserver<Route<Object?>> flutterToastRouteObserver =
    RouteObserver<Route<Object?>>();

class FlutterToastProvider extends StatefulWidget {
  final Widget child;

  FlutterToastProvider({required this.child, Key? key}) : super(key: key);

  @override
  _FlutterToastProviderState createState() => _FlutterToastProviderState();
}

class _FlutterToastProviderState extends State<FlutterToastProvider>
    with RouteAware {
  @override
  void initState() {
    super.initState();
    _initCurrentToastContext();
  }

  void _initCurrentToastContext() {
    FToast().init(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ModalRoute.of(context)?.let((Route<Object?> it) {
      flutterToastRouteObserver.subscribe(this, it);
    });
  }

  @override
  void didPopNext() {
    _initCurrentToastContext();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    flutterToastRouteObserver.unsubscribe(this);
    super.dispose();
  }
}

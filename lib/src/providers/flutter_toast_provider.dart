import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

final RouteObserver<PageRoute<dynamic>> flutterToastRouteObserver =
    RouteObserver<PageRoute<dynamic>>();

class FlutterToastProvider extends StatefulWidget {
  final Widget child;

  FlutterToastProvider({Key key, this.child}) : super(key: key);

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
    flutterToastRouteObserver.subscribe(this, ModalRoute.of(context));
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

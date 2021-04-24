import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension CGBlocContextExtension on BuildContext {
  T bloc<T extends BlocBase<Object?>>() => BlocProvider.of<T>(this);

  T blocAdd<T extends BlocBase<Object?>, E>(E event) {
    T blocProvider = BlocProvider.of<T>(this);
    (blocProvider as Bloc<E, dynamic>).add(event);
    return blocProvider;
  }

  ThemeData get theme => Theme.of(this);
}

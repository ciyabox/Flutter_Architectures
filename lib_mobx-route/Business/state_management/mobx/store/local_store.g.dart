// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LocalStore on _LocalStoreBase, Store {
  final _$valueIntAtom = Atom(name: '_LocalStoreBase.valueInt');

  @override
  int get valueInt {
    _$valueIntAtom.reportRead();
    return super.valueInt;
  }

  @override
  set valueInt(int value) {
    _$valueIntAtom.reportWrite(value, super.valueInt, () {
      super.valueInt = value;
    });
  }

  @override
  String toString() {
    return '''
valueInt: ${valueInt}
    ''';
  }
}

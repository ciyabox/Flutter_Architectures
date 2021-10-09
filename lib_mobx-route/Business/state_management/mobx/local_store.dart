import 'package:mobx/mobx.dart';
part 'local_store.g.dart';

class LocalStore = _LocalStoreBase with _$LocalStore;

abstract class _LocalStoreBase with Store {
  @observable
  int value = 0;

  @observable
  int? futureValue;

  @action
  Future getFutureValue() async {
    await Future.delayed(Duration(seconds: 3));
    futureValue = 5;
  }
  
}

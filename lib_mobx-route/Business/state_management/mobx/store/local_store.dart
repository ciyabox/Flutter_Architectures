import 'package:mobx/mobx.dart';
part 'local_store.g.dart';

class LocalStore = _LocalStoreBase with _$LocalStore;

abstract class _LocalStoreBase with Store {

  @observable
  int valueInt = 0;
 
}
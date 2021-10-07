import 'package:mobx_system_demo/Business/state_management/mobx/store/local_store.dart';

final storeManager = StoreManager();
class StoreManager{

  LocalStore? _localStore;
  LocalStore get localStore => _localStore ??= LocalStore();

}
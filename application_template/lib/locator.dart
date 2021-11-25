import 'package:get_it/get_it.dart';

//singletonları eklememiz lazım
//GetIt locator = GetIt(); //global locator nesnesi oluşturduk her yerden ulaşabilmek için
GetIt locator = GetIt.instance;
void setupLocator() {
  /*
  locator.registerLazySingleton(() => FirebaseAuthService());
  locator.registerLazySingleton(() => FakeAuthenticationService());
  locator.registerLazySingleton(() => FireStoreDBService());
  locator.registerLazySingleton(() => FirebaseStorageService());
  locator.registerLazySingleton(() => UserRepository());
  locator.registerLazySingleton(() => BildirimGondermeServis());
   */
}

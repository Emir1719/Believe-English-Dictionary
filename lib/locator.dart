import 'package:believe_english_dictionary/constant/color.dart';
import 'package:believe_english_dictionary/constant/style.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ProjectColor());
  locator.registerLazySingleton(() => ProjectStyle());
}

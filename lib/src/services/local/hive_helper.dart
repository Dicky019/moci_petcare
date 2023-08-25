import 'package:hive_flutter/hive_flutter.dart';
import '/src/constants/keys/hive_key.dart';

Future<void> hiveInit() async {
  await Hive.initFlutter();
  await Hive.openBox<String>(HiveKey.userBox);
  await Hive.openBox<String>(HiveKey.userTokenBox);
  await Hive.openBox<String>(HiveKey.firstInstallBox);
}

Future<void> hiveClose() async {
  await Hive.close();
}

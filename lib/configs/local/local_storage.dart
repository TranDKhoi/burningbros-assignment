import 'package:bb_assignment/configs/di/injection.dart';
import 'package:bb_assignment/features/home/data/providers/local/home_storage.dart';
import 'package:bb_assignment/utils/preferences/pref_util.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> initLocalStorage() async {
  await Hive.initFlutter();

  await getIt<PrefUtil>().init();
  await getIt<HomeStorage>().init();
}

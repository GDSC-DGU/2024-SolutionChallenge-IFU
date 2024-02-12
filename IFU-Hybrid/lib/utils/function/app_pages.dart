import 'package:get/get.dart';
import 'package:ifu/bindings/root_binding.dart';
import 'package:ifu/utils/class/app_routes.dart';
import 'package:ifu/views/entry/entry_screen.dart';
import 'package:ifu/views/root/root_screen.dart';

List<GetPage> appPages = [
  GetPage(
    name: Routes.ROOT,
    page: () => const RootScreen(),
    binding: RootBinding()
  ),
  GetPage(
    name: Routes.ENTRY,
    page: () => const EntryScreen(),
  )
];
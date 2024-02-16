import 'package:get/get.dart';
import 'package:ifu/bindings/root_binding.dart';
import 'package:ifu/utils/class/app_routes.dart';
import 'package:ifu/views/chat/chat_screen.dart';
import 'package:ifu/views/concept/concept_screen.dart';
import 'package:ifu/views/entry/entry_screen.dart';
import 'package:ifu/views/home/home_screen.dart';
import 'package:ifu/views/root/root_screen.dart';
import 'package:ifu/views/solving/solution_screen.dart';
import 'package:ifu/views/solving/solving_entry_screen.dart';
import 'package:ifu/views/solving/solving_screen.dart';

List<GetPage> appPages = [
  GetPage(
    name: Routes.ROOT,
    page: () => const RootScreen(),
    binding: RootBinding()
  ),
  GetPage(
    name: Routes.ENTRY,
    page: () => const EntryScreen(),
  ),
  GetPage(
    name: Routes.HOME,
    page: () => const HomeScreen(),
    binding: RootBinding()
  ),
  GetPage(
    name: Routes.CONCEPT,
    page: () => const ConceptScreen(),
    binding: RootBinding()
  ),
  GetPage(
    name: Routes.SOLVING_ENTRY,
    page: () => const SolvingEntryScreen(),
    binding: RootBinding()
  ),
  GetPage(
    name: Routes.SOLVING,
    page: () => const SolvingScreen(),
    binding: RootBinding()
  ),
  GetPage(
    name: Routes.SOLUTION,
    page: () => const SolutionScreen(),
    binding: RootBinding()
  ),
  GetPage(
    name: Routes.CHAT,
    page: () => const ChatScreen(),
    binding: RootBinding()
  ),

];
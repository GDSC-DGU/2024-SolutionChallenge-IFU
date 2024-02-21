import 'package:get/get.dart';
import 'package:ifu/models/solving/solving_model.dart';
import 'package:ifu/providers/solving/solving_provider.dart';

class SolvingRepository extends GetxService {
  late final SolvingProvider _provider;

  @override
  void onInit() {
    super.onInit();

    // Dependency injection
    _provider = Get.find<SolvingProvider>();
  }

  Future<List<SolvingModel>> getSolving() async {
    final solvingData = await _provider.getSolvingData();
    return solvingData;
  }
}

import 'package:get/get.dart';
import 'package:ifu/models/home/insight_model.dart';
import 'package:ifu/models/home/job_and_edu_model.dart';
import 'package:ifu/models/home/life_and_culture_model.dart';
import 'package:ifu/repositories/home/home_repository.dart';

class HomeViewModel extends GetxController {
  late final HomeRepository _repository;
  late final Rxn<List<InsightModel>> _insights;
  late final Rxn<List<JobAndEduModel>> _edus;
  late final Rxn<List<LifeAndCultureModel>> _lifes;
  RxBool isLoading = false.obs;

  List<InsightModel>? get insights => _insights.value;
  List<JobAndEduModel>? get edus => _edus.value;
  List<LifeAndCultureModel>? get lifes => _lifes.value;

  @override
  void onInit() {
    super.onInit();

    // Dependency injection
    _repository = Get.find<HomeRepository>();

    // Initialize Fields;
    _insights = Rxn<List<InsightModel>>();
    _edus = Rxn<List<JobAndEduModel>>();
    _lifes = Rxn<List<LifeAndCultureModel>>();

    // Fetch Data
    getInsight();
    getEdu();
    getLife();
  }

  Future<void> getInsight() async {
    try {
      isLoading.value = true;
      _insights.value = await _repository.getInsight();
    } on Exception catch (_) {
      _insights.value = null;
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getEdu() async {
    try {
      isLoading.value = true;
      _edus.value = await _repository.getJobAndEdu();
    } on Exception catch (_) {
      _edus.value = null;
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getLife() async {
    try {
      isLoading.value = true;
      _lifes.value = await _repository.getLifeAndCulture();
    } on Exception catch (_) {
      _lifes.value = null;
    } finally {
      isLoading.value = false;
    }
  }
}
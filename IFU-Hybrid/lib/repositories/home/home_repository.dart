import 'package:get/get.dart';
import 'package:ifu/models/home/insight_model.dart';
import 'package:ifu/models/home/job_and_edu_model.dart';
import 'package:ifu/models/home/life_and_culture_model.dart';
import 'package:ifu/providers/home/home_provider.dart';

class HomeRepository extends GetxService {
  late final HomeProvider _provider;

  @override
  void onInit() {
    super.onInit();

    // Dependency injection
    _provider = Get.find<HomeProvider>();
  }

  Future<List<InsightModel>> getInsight() async {
    final insightData = await _provider.getInsightData();
    return insightData;
  }

  Future<List<JobAndEduModel>> getJobAndEdu() async {
    final jobAndEduData = await _provider.getJobAndEducationData();
    return jobAndEduData;
  }

  Future<List<LifeAndCultureModel>> getLifeAndCulture() async {
    final lifeAndCultureData = await _provider.getLifeAndCultureData();
    return lifeAndCultureData;
  }
}
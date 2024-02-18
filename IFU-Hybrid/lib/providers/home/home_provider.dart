import 'package:ifu/utils/data/home/insight_data.dart';
import 'package:ifu/utils/data/home/job_and_edu_data.dart';
import 'package:ifu/utils/data/home/life_and_culture_data.dart';

class HomeProvider {
  Future<dynamic> getInsightData() async {
    return insightData();
  }

  Future<dynamic> getJobAndEducationData() async {
    return jobsAndEduData();
  }

  Future<dynamic> getLifeAndCultureData() async {
    return lifeAndCultureData();
  }
}
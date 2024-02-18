import 'package:ifu/models/home/job_and_edu_model.dart';

List<JobAndEduModel> getJobAndEduModelData() {
  return [
    JobAndEduModel(imageUrl: 'abcd', title: 'CJD Berufsbildungswerk Gera', country: 'Germany', description: 'a vocational training center', webUrl: 'https://www.cjd-bbw-gera.de/'),
    JobAndEduModel(imageUrl: 'abcd', title: 'Seoul mim center', country: 'Korea', description: 'an educational center', webUrl: 'https://sbifc.org/')
  ];
}
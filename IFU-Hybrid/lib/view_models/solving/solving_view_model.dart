import 'package:get/get.dart';
import 'package:ifu/models/solving/solving_model.dart';
import 'package:ifu/repositories/solving/solving_repository.dart';

class SolvingViewModel extends GetxController {
  late final SolvingRepository _repository;
  final Rxn<List<SolvingModel>> _solvings = Rxn<List<SolvingModel>>();
  final RxInt _currentQuestionIndex = 0.obs; // 현재 문제 인덱스
  RxBool isLoading = false.obs;

  List<SolvingModel>? get solvings => _solvings.value;
  SolvingModel? get currentQuestion =>
      _solvings.value?.elementAt(_currentQuestionIndex.value);
  String? get currentAnswer =>
      _solvings.value?.elementAt(_currentQuestionIndex.value).answer;

  int get currentQuestionIndex => _currentQuestionIndex.value;

  @override
  void onInit() {
    super.onInit();
    _repository = Get.find<SolvingRepository>();
    fetchSolvings();
  }

  Future<void> fetchSolvings() async {
    isLoading.value = true;
    try {
      _solvings.value = await _repository.getSolving();
    } finally {
      isLoading.value = false;
    }
  }

  void nextQuestion() {
    if (_currentQuestionIndex.value < (_solvings.value?.length ?? 0) - 1) {
      _currentQuestionIndex.value++;
    } else {
      _currentQuestionIndex.value = 0;
    }
  }

  void resetQuestions() {
    _currentQuestionIndex.value = 0;
  }
}

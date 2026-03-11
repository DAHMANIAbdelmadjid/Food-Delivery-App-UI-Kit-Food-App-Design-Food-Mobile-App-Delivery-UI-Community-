import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'star_state.dart';

class StarCubit extends Cubit<StarState> {
  StarCubit() : super(StarInitial(0));

  List<String> selectedCategories = [];

  void changeStar(int newCount) {
    emit(Star(newCount));
  }

void toggleSelection(String category) {
  bool isSelected = selectedCategories.contains(category);
  if (isSelected) {
    selectedCategories.remove(category);
  } else {
    selectedCategories.add(category);
  }
  emit(Selected(state.count, isSelected));
}
}

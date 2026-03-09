import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:project_6/model/food.dart';

part 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  final FakeFoodDataSource dataSource;

  FoodCubit(this.dataSource) : super(FoodInitial());

  Future<void> fetchFoods() async {
    try {
      emit(FoodLoading());

      final foods = await dataSource.getFoods();

      emit(FoodLoaded(foods));
    } catch (e) {
      emit(FoodError("Failed to load foods"));
    }
  }
}

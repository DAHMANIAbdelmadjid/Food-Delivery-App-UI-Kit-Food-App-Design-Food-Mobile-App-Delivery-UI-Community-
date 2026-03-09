part of 'food_cubit.dart';

@immutable
sealed class FoodState extends Equatable {}

class FoodInitial extends FoodState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class FoodLoading extends FoodState {
  List<Object?> get props => [];
}

class FoodLoaded extends FoodState {
  List<Object?> get props => [];

  final List<FoodModel> foods;

  FoodLoaded(this.foods);
}

class FoodError extends FoodState {
  List<Object?> get props => [];

  final String message;

  FoodError(this.message);
}

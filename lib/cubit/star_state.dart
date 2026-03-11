part of 'star_cubit.dart';

sealed class StarState extends Equatable {

  StarState(this.count);
  final int count;
  bool get isSelected => false; 
  @override
  List<Object> get props => [count];
}

final class StarInitial extends StarState {
  StarInitial(super.count);
}

final class Star extends StarState {
  Star(super.count);
}
final class Selected extends StarState {
    bool isSelected;

  Selected(super.count,this.isSelected);
}

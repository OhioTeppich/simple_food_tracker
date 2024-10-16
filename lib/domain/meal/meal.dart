import 'package:equatable/equatable.dart';
import 'package:simple_food_tracker/domain/core/entity.dart';
import 'package:uuid/uuid.dart';

class Meal extends Equatable implements Entity {
  @override
  final Uuid id;

  final List<Uuid> foodIds;

  const Meal({
    required this.id,
    required this.foodIds,
  });

  Map<String, dynamic> toJson(Meal food) => {
        'id': food.id,
        'foodIds': food.foodIds,
      };

  Meal fromJson(Map<String, dynamic> json) => Meal(
        id: json['id'],
        foodIds: json['foodIds'],
      );

  @override
  List<Object?> get props => [
        id,
        foodIds,
      ];
}

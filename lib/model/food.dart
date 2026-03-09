class FoodModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;
  final String category;

  FoodModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
  });
}

class FakeFoodDataSource {
  Future<List<FoodModel>> getFoods() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      FoodModel(
        id: 1,
        name: "Margherita Pizza",
        description: "Classic pizza with tomato sauce and mozzarella cheese.",
        price: 8.99,
        image:
            "assets/image/meat-sage-with-mushrooms-potatoes-vegetables-top-view.jpg",
        category: "Italian",
      ),
      FoodModel(
        id: 2,
        name: "Cheeseburger",
        description: "Grilled beef burger with cheddar cheese.",
        price: 7.50,
        image: "assets/image/Rectangle 145.png",
        category: "Fast Food",
      ),
      FoodModel(
        id: 3,
        name: "Chicken Shawarma",
        description: "Spiced chicken wrapped in pita bread.",
        price: 6.00,
        image: "assets/image/fried-chicken-with-mushrooms-rice.jpg",
        category: "Middle Eastern",
      ),
      FoodModel(
        id: 4,
        name: "Sushi Platter",
        description: "Assorted fresh sushi with soy sauce.",
        price: 14.99,
        image: "assets/image/Rectangle 146.png",
        category: "Japanese",
      ),
      FoodModel(
        id: 5,
        name: "Pasta Carbonara",
        description: "Creamy pasta with bacon and parmesan.",
        price: 9.75,
        image: "assets/image/Rectangle 147.png",
        category: "Italian",
      ),
      FoodModel(
        id: 6,
        name: "Caesar Salad",
        description: "Fresh lettuce with Caesar dressing.",
        price: 5.50,
        image:
            "assets/image/tasty-fresh-appetizing-italian-food-ingredients-dark-background.jpg",
        category: "Healthy",
      ),
      FoodModel(
        id: 7,
        name: "Grilled Steak",
        description: "Juicy grilled steak cooked to perfection.",
        price: 18.00,
        image:
            "assets/image/vegetarian-buddha-bowl-raw-vegetables-baked-potatoes-bowl-vegan-meal-healthy-detox-food-concept-top-view-flat-lay.jpg",
        category: "Grill",
      ),
      FoodModel(
        id: 8,
        name: "Chocolate Cake",
        description: "Rich chocolate cake with cream topping.",
        price: 4.99,
        image: "assets/image/view-delicious-dish-food.jpg",
        category: "Dessert",
      ),
    ];
  }
}

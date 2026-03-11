import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_6/core/conestate.dart';
import 'package:project_6/cubit/star_cubit.dart';
import 'package:project_6/screen/bottom_navigation_bar/widget/category_item.dart';
import 'package:project_6/screen/bottom_navigation_bar/widget/icon_button_box.dart';

class SearchDrinks extends StatefulWidget {
  @override
  State<SearchDrinks> createState() => _SearchDrinksState();
}

class _SearchDrinksState extends State<SearchDrinks> {
  final List<String> categories = [
    'Coffee',
    'Cocktail',
    'Juice',
    'Milkshake',
    'Wine',
    'Piña Colada',
    'Mojito',
    'Craft Beer',
    'Ice Tea',
  ];
  double price = 10;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => StarCubit(),
      child: Scaffold(
        backgroundColor: primaryColor,

        body: Stack(
          children: [
            Positioned(
              top: 60,
              left: 10,
              child: Icon(Icons.arrow_back_ios, color: sacandryColor),
            ),
            Positioned(
              top: 60,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Filter',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: size.width - 100,
              child: IconButtonBox(
                asset: 'assets/icon/Cart icon.svg',
                openDrawer: () {
                  // => openDrawer(DrawerType.profile),
                },
              ),
            ),
            Positioned(
              top: 60,
              left: size.width - 50,
              child: IconButtonBox(
                asset: 'assets/icon/Vector (1).svg',
                openDrawer: () {
                  // => openDrawer(DrawerType.profile),
                },
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: white,
                ),
                width: size.width,
                height: size.height * 0.8,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('Categories'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CategoryItem(
                              category: CategoryModel(
                                title: 'Snacks',
                                icon: 'assets/icon/Snacks.svg',
                              ),
              
                            ),
                            CategoryItem(
                              category: CategoryModel(
                                title: 'Meal',
                                icon: 'assets/icon/Meals.svg',
                              ),
                            ),
                            CategoryItem(
                              category: CategoryModel(
                                title: 'Vegan',
                                icon: 'assets/icon/Vegan.svg',
                              ),
                            ),
                            CategoryItem(
                              category: CategoryModel(
                                title: 'Dessert',
                                icon: 'assets/icon/Desserts.svg',
                              ),
                            ),
                            CategoryItem(
                              category: CategoryModel(
                                title: 'Drinks',
                                icon: 'assets/icon/Drinks.svg',
                              ),
                              color: true,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),

                        Container(
                          width: double.infinity,
                          height: 1,
                          color: orange,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Sort by',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        BlocBuilder<StarCubit, StarState>(
                          builder: (context, state) {
                            return Row(
                              children: [
                                Text('Top Rated'),
                                SizedBox(width: 10),
                                ...List.generate(5, (index) {
                                  return IconButton(
                                    onPressed: () {
                                      context.read<StarCubit>().changeStar(
                                        index + 1,
                                      );
                                    },
                                    icon: Icon(
                                      index < state.count
                                          ? Icons.star
                                          : Icons.star_border,
                                      color: sacandryColor,
                                    ),
                                  );
                                }),
                              ],
                            );
                          },
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: orange,
                        ),
                        SizedBox(height: 10),

                        Text('Categories'),
                        SizedBox(height: 10),

                        BlocBuilder<StarCubit, StarState>(
                          builder: (context, state) {
                            return Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children:
                                  categories.map((category) {
                                    return InkWell(
                                      onTap: () {
                                        context
                                            .read<StarCubit>()
                                            .toggleSelection(category);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          color:
                                              state.isSelected
                                                  ? sacandryColor
                                                  : orange,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Text(
                                          category,
                                          style: TextStyle(
                                            color:
                                                state.isSelected
                                                    ? Colors.white
                                                    : Colors.red,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                            );
                          },
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Price',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        Slider(
                          value: price,
                          min: 1,
                          max: 100,
                          divisions: 99,
                          activeColor: Colors.red,
                          inactiveColor: Colors.grey[300],
                          label: '\$${price.toInt()}',
                          onChanged: (value) {
                            setState(() {
                              price = value;
                            });
                          },
                        ),
                        SizedBox(height: 30),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              padding: EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Text(
                              'Apply',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

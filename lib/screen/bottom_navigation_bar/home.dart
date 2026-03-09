import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_6/core/conestate.dart';
import 'package:project_6/cubit/food_cubit.dart';
import 'package:project_6/model/food.dart';
import 'package:project_6/screen/bottom_navigation_bar/widget/category_item.dart';
import 'package:project_6/screen/bottom_navigation_bar/widget/icon_button_box.dart';
import 'package:project_6/screen/bottom_navigation_bar/widget/pice_image.dart';

class Home extends StatelessWidget {
  final Function(DrawerType) openDrawer;

  const Home({super.key, required this.openDrawer});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => FoodCubit(FakeFoodDataSource())..fetchFoods(),
      child: Stack(
        children: [
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            // width: double.infinity,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Search',
                                filled: true,
                                fillColor: white,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                  ),
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: sacandryColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset(
                                        'assets/icon/Filters Icon.svg',
                                        color: white,
                                      ),
                                      // ),
                                    ),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(60),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        IconButtonBox(
                          asset: 'assets/icon/Cart icon.svg',
                          openDrawer: () => openDrawer(DrawerType.cart),
                        ),

                        SizedBox(width: 7),
                        IconButtonBox(
                          asset: 'assets/icon/Vector (2).svg',
                          openDrawer: () => openDrawer(DrawerType.notification),
                        ),

                        SizedBox(width: 7),
                        IconButtonBox(
                          asset: 'assets/icon/Vector (1).svg',
                          openDrawer: () => openDrawer(DrawerType.profile),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    Text(
                      'Good Morning',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: white,
                      ),
                    ),
                    Text(
                      'Rise and shine! It\'s breakfast time',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: sacandryColor,
                      ),
                    ),
                  ],
                ),
              ),
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
              height: size.height * 0.67,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          categories.length,
                          (index) => CategoryItem(category: categories[index]),
                        ),
                      ),
                      SizedBox(height: 14),

                      Container(
                        width: double.infinity,
                        height: 1,
                        color: orange,
                      ),
                      SizedBox(height: 14),
                      Row(
                        children: [
                          Text(
                            'Best Seller ',
                            style: TextStyle(
                              color: fontColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'View All ',
                            style: TextStyle(
                              color: sacandryColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 140, // مهم جداً تحديد الارتفاع
                        child: BlocBuilder<FoodCubit, FoodState>(
                          builder: (context, state) {
                            if (state is FoodLoading) {
                              return Center(child: CircularProgressIndicator());
                            }

                            if (state is FoodLoaded) {
                              return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.foods.length,
                                itemBuilder: (context, index) {
                                  final food = state.foods[index];

                                  return Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: PiceImage(
                                      image: food.image,
                                      price: food.price.toString(),
                                    ),
                                  );
                                },
                              );
                            }

                            if (state is FoodError) {
                              return Center(child: Text(state.message));
                            }

                            return SizedBox();
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: sacandryColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -20,
                                  left: -20,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle,
                                    ),

                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: sacandryColor,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -40,
                                  right: -10,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: sacandryColor,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Experience our delicious new dish",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "30% OFF",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              child: Image.asset(
                                'assets/image/view-delicious-dish-food.jpg',
                                width: double.infinity,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Recommend ',
                        style: TextStyle(
                          color: fontColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
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
    );
  }
}

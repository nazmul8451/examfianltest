import 'package:flutter/material.dart';

class Final_Ui extends StatelessWidget {
  const Final_Ui({super.key});

  final List<Map<String, String>> foodItems = const [
    {
      'title': 'Pizza',
      'description': 'Very spicy pizza to eat',
      'time': '20-21 min',
      'price': '\$6',
      'imageUrl':
      'https://i0.wp.com/nationalfoods.org/wp-content/uploads/2018/11/National-Dish-of-Italy-Pizza.jpg?fit=1140%2C500&ssl=1',
    },
    {
      'title': 'Burger',
      'description': 'Very spicy Burger to eat',
      'time': '10-15 min',
      'price': '\$4',
      'imageUrl':
      'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/102cf51c-9220-4278-8b63-2b9611ad275e/Derivates/3831dbe2-352e-4409-a2e2-fc87d11cab0a.jpg',
    },
    {
      'title': 'Pani Puri',
      'description': 'Testy and spicy Pani puri',
      'time': '10-15 min',
      'price': '\$1',
      'imageUrl':
      'https://upload.wikimedia.org/wikipedia/commons/e/e9/Pani_Puri1.JPG',
    },
    {
      'title': 'Chicken Samosa',
      'description': 'Testy and spicy samosa',
      'time': '10-15 min',
      'price': '\$1',
      'imageUrl':
      'https://i0.wp.com/paattiskitchen.com/wp-content/uploads/2023/03/kmc_20230226_234026.jpg?resize=1024%2C576&ssl=1',
    },
    {
      'title': 'Chicken Shawarma',
      'description': 'This is one of my signature recipes that will be very familiar to all my friends',
      'time': '10-15 min',
      'price': '\$3',
      'imageUrl':
      'https://b3067249.smushcdn.com/3067249/wp-content/uploads/2022/07/Shawarma-848x477.jpg?lossy=0&strip=1&webp=1',
    },
    {
      'title': 'Hand-Pulled Noodles',
      'description': 'Hand-Pulled Noodles From China’s Rugged Northwest',
      'time': '10-15 min',
      'price': '\$2',
      'imageUrl':
      'https://i0.wp.com/blog.themalamarket.com/wp-content/uploads/2024/06/Vegetarian-pulled-noodles-lead-more-sat.jpg?resize=1200%2C900&ssl=1',
    },
    {
      'title': 'Spicy Penne Pasta',
      'description': 'Spicy Penne Pasta comes to the rescue!',
      'time': '10-12 min',
      'price': '\$3',
      'imageUrl':
      'https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/creamy_roasted_red_91087_16x9.jpg',
    },
    {
      'title': 'Spacial Sandwich',
      'description': 'Looking for a delicious meal that’s light on the tummy yet tastes yummy? Try a vegetable sandwich recipe that ticks all those boxes with a bonus of crunchy freshness! ',
      'time': '10-12 min',
      'price': '\$3',
      'imageUrl':
      'https://www.spicebangla.com/wp-content/uploads/2024/07/vegetable-sandwich-recipe.webp',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 900
        ? 4
        : screenWidth > 600
        ? 3
        : 2;

    final itemWidth = (screenWidth - 20 - ((crossAxisCount - 1) * 10)) / crossAxisCount;
    final itemHeight = itemWidth * 1.4;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Menu',style: TextStyle(color: Colors.black,),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                spacing: 10,
                runSpacing: 10,
                children: foodItems.map((item) {
                  return SizedBox(
                    width: itemWidth,
                    height: itemHeight,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(15)),
                            child: Image.network(
                              item['imageUrl']!,
                              height: itemHeight * 0.4,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: Text(
                              item['title']!,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              item['description']!,
                              style: const TextStyle(fontSize: 12),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: Row(
                              children: [
                                const Icon(Icons.access_time,
                                    size: 12, color: Colors.grey),
                                const SizedBox(width: 4),
                                Text(
                                  item['time']!,
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  item['price']!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                                const Spacer(),
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}

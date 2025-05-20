import 'package:flutter/material.dart';

class UiDesign extends StatefulWidget {
  const UiDesign({super.key});

  @override
  State<UiDesign> createState() => _UiDesignState();
}

class _UiDesignState extends State<UiDesign> {
  final List<Map<String, String>> foodItems = [
    {
      'title': 'Italy Pizza',
      'description': 'Very spicy food to eat',
      'time': '20-21 min',
      'price': '\$160',
      'imageUrl': 'https://flagcdn.com/w320/it.png',
    },
    {
      'title': 'Japan Sushi',
      'description': 'Fresh and healthy',
      'time': '18-20 min',
      'price': '\$180',
      'imageUrl': 'https://flagcdn.com/w320/jp.png',
    },
    {
      'title': 'India Curry',
      'description': 'Spicy and traditional',
      'time': '25-30 min',
      'price': '\$140',
      'imageUrl': 'https://flagcdn.com/w320/in.png',
    },
    {
      'title': 'Mexico Tacos',
      'description': 'Crispy and hot',
      'time': '15-17 min',
      'price': '\$120',
      'imageUrl': 'https://flagcdn.com/w320/mx.png',
    },
    {
      'title': 'USA Burger',
      'description': 'Juicy and cheesy',
      'time': '12-15 min',
      'price': '\$150',
      'imageUrl': 'https://flagcdn.com/w320/us.png',
    },
    {
      'title': 'USA Burger',
      'description': 'Juicy and cheesy',
      'time': '12-15 min',
      'price': '\$150',
      'imageUrl': 'https://flagcdn.com/w320/us.png',
    },
    {
      'title': 'USA Burger',
      'description': 'Juicy and cheesy',
      'time': '12-15 min',
      'price': '\$150',
      'imageUrl': 'https://flagcdn.com/w320/us.png',
    },
    {
      'title': 'USA Burger',
      'description': 'Juicy and cheesy',
      'time': '12-15 min',
      'price': '\$150',
      'imageUrl': 'https://flagcdn.com/w320/us.png',
    },
    {
      'title': 'USA Burger',
      'description': 'Juicy and cheesy',
      'time': '12-15 min',
      'price': '\$150',
      'imageUrl': 'https://flagcdn.com/w320/us.png',
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

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Top bar
                Row(
                  children: [
                    const Icon(Icons.menu),
                    const Spacer(),
                    const Icon(Icons.add_card),
                  ],
                ),
                const SizedBox(height: 20),

                /// Header
                const Text(
                  'Tasty food\nto eat',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(height: 20),

                /// Today's Menu
                Row(
                  children: const [
                    Text(
                      "Today's Menu",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "More",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                /// Responsive Grid View
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: foodItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    final item = foodItems[index];
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.orange.shade50,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  item['imageUrl']!,
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              item['title']!,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              item['description']!,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                const Icon(Icons.access_time,
                                    size: 14, color: Colors.grey),
                                const SizedBox(width: 4),
                                Text(
                                  item['time']!,
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text(
                                  item['price']!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(Icons.add,
                                      color: Colors.white, size: 16),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

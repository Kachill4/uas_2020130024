import 'package:flutter/material.dart';

import 'cartscreen.dart';
import 'menu.dart';

class HomeScreen extends StatelessWidget {
  final List<Menu> products = [
    Menu('Fresh Salmon Sushi', 'assets/images/food1.jpg', 35000.0,
        ''' Nikmati kelezatan dan kesegaran laut dalam setiap gigitan dengan Fresh Salmon Sushi kami yang istimewa. Dipersiapkan dengan teliti oleh koki berpengalaman, setiap potongan sushi ini menawarkan kombinasi sempurna antara kelembutan daging salmon segar dan kelezatan nasi sushi yang kenyal.'''),
    Menu('Gyoza', 'assets/images/food2.jpg', 25000.0,
        ''' Nikmati kelezatan gyoza Jepang, sajian dimsum yang memikat lidah. Kulit tipis yang dipanggang atau digoreng hingga keemasan melingkupi isian daging cincang yang lembut dan aromatik, memberikan harmoni sempurna antara tekstur renyah dan rasa gurih. Sajikan dengan saus dipping khas yang memberikan sentuhan manis dan pedas, gyoza ini menjadi kombinasi cita rasa yang memikat.'''),
    Menu('Healthy BBQ', 'assets/images/food3.jpg', 41000.0,
        ''' Potongan steak berkualitas tinggi yang dipanggang sempurna, memberikan kelezatan dan kepuasan pada setiap gigitan. Permukaan luar steak terbungkus dengan kerak renyah, menciptakan kombinasi rasa yang kaya. Disajikan dengan aneka salad segar, hidangan ini menghadirkan keseimbangan cita rasa dan nutrisi yang sempurna.'''),
    Menu('Fried Rice Seafood', 'assets/images/food4.jpg', 36000.0,
        ''' Nasi goreng khas Indonesia akan membawamu merasakan indahnya citarasa dari rempah-rempah Nusantara.'''),
    Menu('Nasi Bakar', 'assets/images/food5.jpg', 38000.0,
        ''' Kenikmatan gurihya nasi dengan lauk yang bercampur secara merata yang membuatmu ingin melahapnya lagi dan lagi.'''),
    Menu('Yakisoba', 'assets/images/food6.jpg', 43000.0,
        ''' Sayuran segar yang dipetik dari negeri sakura dengan bumbu yang meresap membuatmu akan menjadi sehat sertamencukupi nutrisi untuk tubuh'''),

  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '''STASIUN
          MAKANAN''',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFED7D31),
            fontSize: 45,
            fontFamily: 'Luckiest Guy',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        
        backgroundColor: const Color(0xFFfff1dd),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 8, right: 8, top: 16),
            child: Container(
              decoration: BoxDecoration(
                color:
                    const Color(0xFF4f4a45), // Warna hijau untuk container luar
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40.0,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF94877b),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // Isi container pertama di atas GridView
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 40.0,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF60554a),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // Isi container kedua di atas GridView
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
              height:
                  8.0), // Memberikan jarak antara container di atas dan GridView
          ProductList(),
        ],
      ),
      backgroundColor: const Color(0xFFfff1dd),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CartScreen(
                imagePath: 'path/to/image.jpg',
                productName: 'Nama Produk',
                productPrice: 100.0,
                productQuantity: 1,
              ),
            ),
          );
        },
        tooltip: 'Shopping Cart',
        foregroundColor: const Color.fromARGB(255, 47, 3, 3),
        backgroundColor: Color.fromARGB(255, 237, 240, 186),
        child: const Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class ProductList extends StatelessWidget {
  final List<String> products = [
    'Produk 1',
    'Produk 2',
    'Produk 3',
    'Produk 4',
    'Produk 5',
    'Produk 6',
    'Produk 7',
    'Produk 8',
    'Produk 9',
    'Produk 10',
  ];

  ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              decoration: ShapeDecoration(
                color: const Color(0xFFEDA542),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: SizedBox(
                        height: 150.0,
                        child: ListTile(
                          title: Text(
                            products[index],
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {
                            print('Tapped on ${products[index]}');
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

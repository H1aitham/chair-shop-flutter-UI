import 'package:chair_shop/ProductDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

List seems = [
  {
    'title': 'Chairs',
    'color': const Color(0xff416954),
    'colortwo': const Color(0xffF2F2F2),
  },
  {
    'title': 'Cupboard',
    'color': const Color(0xffF2F2F2),
    'colortwo': const Color(0xff416954),
  },
  {
    'title': 'Fila',
    'color': const Color(0xffF2F2F2),
    'colortwo': const Color(0xff416954),
  },
  {
    'title': 'Tables',
    'color': const Color(0xffF2F2F2),
    'colortwo': const Color(0xff416954),
  },
  {
    'title': 'Lamps',
    'color': const Color(0xffF2F2F2),
    'colortwo': const Color(0xff416954),
  }
];

List items = [
  {
    'images2': 'assets/images/Rectangle 29.png',
    'images': 'assets/images/dds.png',
    'titletwo': 'Modern Chair',
    'suptitle': 'Armchair',
    'price': '₹ 12,500',
  },
  {
    'images2': 'assets/images/Rectangle 33.png',
    'images': 'assets/images/cdae.png',
    'titletwo': 'Minimalist Chair',
    'suptitle': 'Armchair',
    'price': '₹ 8,300',
  },
  {
    'images2': 'assets/images/Rectangle 29.png',
    'images': 'assets/images/dds.png',
    'titletwo': 'Minimalist Chair',
    'suptitle': 'Armchair',
    'price': '₹ 12,500',
  },
  {
    'images2': 'assets/images/Rectangle 33.png',
    'images': 'assets/images/cdae.png',
    'titletwo': 'Minimalist Chair',
    'suptitle': 'Cameras',
    'price': '₹ 12,500',
  },
];
int selectedPage = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          height: 100,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          backgroundColor: Colors.white,
          animationDuration: Duration(seconds: 2),
          selectedIndex: selectedPage,
          onDestinationSelected: (value) {
            setState(() {
              selectedPage = value;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.messenger_outline_rounded,
                color: Color(0xff416954),
              ),
              icon: Icon(
                Icons.messenger_outline_rounded,
                color: Color(0xff828282),
              ),
              label: 'Notification',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                color: Color(0xff416954),
                Icons.heart_broken,
              ),
              icon: Icon(
                Icons.heart_broken,
                color: Color(0xff828282),
              ),
              label: 'Favourite',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                color: Color(0xff416954),
                Icons.home,
              ),
              icon: Icon(
                Icons.home,
                color: Color(0xff828282),
              ),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                color: Color(0xff416954),
                Icons.trolley,
              ),
              icon: Icon(
                Icons.trolley,
                color: Color(0xff828282),
              ),
              label: 'Chart',
            ),
            NavigationDestination(
                selectedIcon: Icon(
                  color: Color(0xff416954),
                  Icons.person,
                ),
                icon: Icon(
                  Icons.person,
                  color: Color(0xff828282),
                ),
                label: 'Profile'),
          ]),
      body: Container(
        color: const Color(0xffF8F8F8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Discover The Best\nFurniture.",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff416954)),
                  ),
                  Container(
                    child: Image.asset("assets/images/ellipse.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 52,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Search for furniture                       |',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xff2C4939),
                    ),
                    hintStyle: TextStyle(
                        color: Color(0xff828282),
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                    suffixIcon: Icon(
                      Icons.short_text,
                      color: Color(0xff2C4939),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 20,
                ),
                const Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff416954)),
                ),
              ],
            ),
            Container(
              height: 10,
            ),
            Container(
              height: 50,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: seems.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            height: 35,
                            width: 93,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: seems[index]['color'],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  seems[index]['title'],
                                  style: TextStyle(
                                      color: seems[index]['colortwo'],
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )),
                      ],
                    );
                  }),
            ),
            Container(
              height: 302,
              width: 700,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisExtent: 190),
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Productdetails(data: items[i]),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 175,
                              width: 250,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(12)),
                              padding: const EdgeInsets.all(20),
                              child: Image.asset(
                                items[i]['images'],
                              ),
                            ),
                            Text(
                              items[i]['titletwo'],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Container(height: 5),
                            Text(
                              items[i]['suptitle'],
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            Container(height: 5),
                            Text(
                              items[i]['price'],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Best Seller',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff416954)),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              width: 1000,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisExtent: 280),
                itemBuilder: (context, i) {
                  return InkWell(
                    // onTap: () {
                    //   Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => ItemsDetails(data: items[i]),
                    //   ));
                    // },
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 106,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(12)),
                              padding: const EdgeInsets.all(20),
                              child: Image.asset(
                                items[i]['images2'],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    items[i]['titletwo'],
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Container(height: 5),
                                  Text(
                                    items[i]['suptitle'],
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Container(height: 5),
                                  Text(
                                    items[i]['price'],
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

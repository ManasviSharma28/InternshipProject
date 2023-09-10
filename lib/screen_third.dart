import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:machanic_bhai/current_location.dart';
import 'package:machanic_bhai/notification.dart';
import 'package:machanic_bhai/search.dart';
import 'package:machanic_bhai/setting.dart';
import 'package:page_transition/page_transition.dart';
//import 'package:machanic_bhai/current_location.dart';
//import 'package:machanic_bhai/notification.dart';
//import 'package:machanic_bhai/search.dart';
//import 'package:machanic_bhai/setting.dart';

class scThird extends StatefulWidget {
  const scThird({super.key});

  @override
  State<scThird> createState() => _scThirdState();
}

class _scThirdState extends State<scThird> {
  List<String> items = <String>[
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

  String dropdownValue = 'Item 1';
  List imageList = [
    {"id": 1, "image_path": "lib/assets/images/car.png"},
    {"id": 2, "image_path": "lib/assets/images/women.png"},
    {"id": 3, "image_path": "lib/assets/images/mechanic.png"},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  bool? isChecked = false;
  List arrNames = [
    'Ramu',
    'Ramesh',
    'Nishant',
    'Vasu',
    'Sonu',
    'Naresh',
    'Monu'
  ];

  //final List<Widget> screens = [
  //  searchBar(),
  // current_loc(),
  //setting(),
  //notify()
  //];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 60, top: 10),
                  child: Container(
                    height: 70,
                    width: 70,
                    child: Image.asset("lib/assets/images/Slogo.png"),
                  ),
                ),
                // Center(
                //  child: screens[_currentIndex],
                //),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 100, top: 10),
                    child: DropdownButton(
                      borderRadius: BorderRadius.circular(20),
                      value: dropdownValue,
                      items: items.map<DropdownMenuItem<String>>(
                        (String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        },
                      ).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                        dropdownValue = newValue!;
                      },
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        print(currentIndex);
                      },
                      child: CarouselSlider(
                        items: imageList
                            .map(
                              (item) => Image.asset(
                                item['image_path'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            )
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 2,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 150,
                      child: Flexible(
                        child: CheckboxListTile(
                          side: BorderSide(color: Colors.black),
                          visualDensity: VisualDensity.compact,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          title: const Text('Filter'),
                          value: isChecked,
                          onChanged: (bool? newValue) {
                            setState(() {
                              isChecked = newValue;
                            });
                          },
                          activeColor: Colors.white,
                          checkColor: Colors.green,
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                    ),
                    Container(
                      width: 220,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(width: 0.8)),
                          hintText: 'Search ',
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30.0,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(
            // height: 10,
            // ),
            //IndexedStack(
            //  index: _currentIndex,
            //children: screens,
            // ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 400,
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ListView.builder(
                      itemBuilder: (current, index) {
                        return Stack(
                          children: [
                            Container(
                              height: 100,
                              child: Card(
                                color: Colors.white,
                                elevation: 2,
                                margin: const EdgeInsets.symmetric(vertical: 2),
                                child: ListTile(
                                  title: Text(
                                    arrNames[index],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  leading:
                                      Image.asset("lib/assets/images/loc.png"),
                                  subtitle: Text("Mechanic "),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 280),
                              child: Image.asset("lib/assets/images/Slogo.png"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 300, top: 60),
                              child: TextButton(
                                  onPressed: () {},
                                  child:
                                      Image.asset("lib/assets/images/add.png")),
                            ),
                          ],
                        );
                      },
                      itemCount: arrNames.length,
                      itemExtent: 100,
                    ))),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 8, 31, 93),
        elevation: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: setting(),
                        type: PageTransitionType.leftToRight));
              },
              tooltip: "Setting",
              icon: Icon(Icons.settings),
              color: Colors.orange,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: notify(), type: PageTransitionType.leftToRight));
              },
              icon: Icon(Icons.notifications),
              color: Colors.orange,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => scThird()));
              },
              icon: Icon(Icons.home),
              color: Colors.orange,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: searchBar(),
                        type: PageTransitionType.leftToRight));
              },
              icon: Icon(Icons.search),
              color: Colors.orange,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: current_loc(),
                        type: PageTransitionType.leftToRight));
              },
              icon: Icon(Icons.pin_drop),
              color: Colors.orange,
            ),
          ],
        ),
      ),
      /*  bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
            label: 'Settings',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.location_pin, color: Colors.grey),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                color: Colors.redAccent,
                shape: BoxShape.circle,
              ),
              height: 40,
              width: 40,
              child: const Icon(Icons.home, color: Colors.white),
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.grey),
            label: 'Notifications',
          ),
          const BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person, color: Colors.grey),
          ),
        ],
        type: BottomNavigationBarType.shifting,
        iconSize: 30,
        elevation: 5,
      ),*/
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/ui/navigation_rail_screen.dart';
import 'package:my_flutter_app/screens/ui/stack_position_screen.dart';
import 'package:my_flutter_app/widgets/carouse_widget.dart';
import 'package:my_flutter_app/screens/ecommerce_home.dart';
import 'package:my_flutter_app/screens/home3_screen.dart';
import 'package:my_flutter_app/screens/home_screen_2.dart';
import 'package:my_flutter_app/screens/tab/form_tab_screen.dart';
import 'package:my_flutter_app/screens/ui/ButtonScreen.dart';
import 'package:my_flutter_app/screens/ui/bottom_navigation_bar_screen.dart';
import 'package:my_flutter_app/screens/ui/formScreen.dart';
import 'package:my_flutter_app/screens/ui/api_call_screen.dart';
import 'package:my_flutter_app/screens/ui/appbar_screen.dart';
import 'package:my_flutter_app/screens/ui/card_screen.dart';
import 'package:my_flutter_app/screens/ui/contact_screen.dart';
import 'package:my_flutter_app/screens/ui/container_screen.dart';
import 'package:my_flutter_app/screens/ui/curve_navigation_screen.dart';
import 'package:my_flutter_app/screens/ui/drawer_screen.dart';
import 'package:my_flutter_app/screens/ui/expanded_screen.dart';
import 'package:my_flutter_app/screens/ui/grid_view_screen.dart';
import 'package:my_flutter_app/screens/ui/list_view_builder_screen.dart';
import 'package:my_flutter_app/screens/ui/list_view_screen.dart';
import 'package:my_flutter_app/screens/ui/my_carousel_slider.dart';
import 'package:my_flutter_app/screens/ui/navigation_rail_screen.dart';
import 'package:my_flutter_app/screens/ui/scrollable_screen.dart';
import 'package:my_flutter_app/screens/ui/stateful_widgets_screen.dart';
import 'package:my_flutter_app/widgets/carouse_widget.dart';

class HomeOneBody extends StatefulWidget {
  const HomeOneBody({super.key});

  @override
  State<HomeOneBody> createState() => _HomeOneBodyState();
}

class _HomeOneBodyState extends State<HomeOneBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(0),
                color: Colors.grey[200],
                width: 450,
                height: 200,
                child: Center(
                  child: CarouseWidget(),
                ),
              ),
              SizedBox(height: 25),

              Center(
                child: const Text(
                  "Let's Start Our Flutter Journey",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Center(
                child: const Text(
                  '-----------------',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),

              SizedBox(height: 5),

              // Scrollable Row Start
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    GridView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 0,
                        // mainAxisExtent: 200,
                      ),
                      itemCount: topics.length,
                      itemBuilder: (context, index) {
                        var topic = topics[index]!;

                        return InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(
                                builder: (context) => topic['screen']),
                            );
                          },
                          child: Card(
                            color: Colors.blue,
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(index < 10 ? '0${(index + 1).toString()!}' : (index + 1).toString()!,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(topic['name']!,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              // Scrollable Row Start
            ],
          ),
        ),
      ),
    );
  }
}


List<Map<String, dynamic>> topics = [
  {
    'name': 'Navigation Rail (Tablet/Desktop style)',
    'screen': NavigationRailScreen(),
  },
  {
    'name': 'Scrollable Row',
    'screen': ScrollableRowScreen(),
  },
  {
    'name': 'Grid View Builder',
    'screen': GridViewScreen(), // Replace with actual screen widget
  },
  {
    'name': 'Stack & Positioned',
    'screen': StackPositionScreen(), // Replace with actual screen widget
  },
  {
    'name': 'Carousel Slider',
    'screen': MyCarouselSlider(),
  },
  {
    'name': 'Curve Navigation',
    'screen': CurveNavigationScreen(),
  },
  // {
  //   'name': 'Bottom Navigation Bar',
  //   'screen': BottomNavigationBarScreen(),
  // },
  {
    'name': 'Drawer',
    'screen': DrawerScreen(),
  },
  {
    'name': 'Container',
    'screen': ContainerScreen(),
  },
  {
    'name': 'List View',
    'screen': ListViewScreen(), // Replace with actual screen widget
  },
  {
    'name': 'List View Builder',
    'screen': ListViewBuilderScreen(), // Replace with actual screen widget
  },
  {
    'name': 'Form',
    'screen': FormScreen(), // Replace with actual screen widget
  },
  {
    'name': 'Button',
    'screen': ButtonScreen(), // Replace with actual screen widget
  },
  {
    'name': 'Contact List',
    'screen': ContactScreen(), // Replace with actual screen widget
  },
  {
    'name': 'Expanded Widget',
    'screen': ExpandedScreen(), // Replace with actual screen widget
  },
  {
    'name': 'App Bar',
    'screen': AppbarScreen(), // Replace with actual screen widget
  },
  {
    'name': 'Card',
    'screen': CardScreen(), // Replace with actual screen widget
  },
  {
    'name': 'Stateful Widget',
    'screen': StatefulWidgetsScreen(), // Replace with actual screen widget
  },
  {
    'name': 'Stateful Playground App',
    'screen': StatefulPlaygroundApp(),
  },
  {
    'name': 'Home 2',
    'screen': Home2Screen(), // Replace with actual screen widget
  },
  {
    'name': 'Ecommerce',
    'screen': EcommerceHome(), // Replace with actual screen widget
  },
  {
    'name': 'Ecommerce',
    'screen': EcommerceHome(), // Replace with actual screen widget
  },
  {
    'name': 'Api Call',
    'screen': ApiCallScreen(), // Replace with actual screen widget
  },
];



// products api
// https://dummyjson.com/products

// https://restcountries.com/


// Country Details
// https://restcountries.com/v3.1/independent?status=true



// https://restcountries.com/v3.1/independent?status=true

// [{
// "name": {
// "common": "Bangladesh",
// "official": "People's Republic of Bangladesh",
// "nativeName": {
// "ben": {
// "official": "বাংলাদেশ গণপ্রজাতন্ত্রী",
// "common": "বাংলাদেশ"
// }
// }
// },
// "tld": [
// ".bd"
// ],
// "cca2": "BD",
// "ccn3": "050",
// "cioc": "BAN",
// "independent": true,
// "status": "officially-assigned",
// "unMember": true,
// "currencies": {
// "BDT": {
// "symbol": "৳",
// "name": "Bangladeshi taka"
// }
// },
// "idd": {
// "root": "+8",
// "suffixes": [
// "80"
// ]
// },
// "capital": [
// "Dhaka"
// ],
// "altSpellings": [
// "BD",
// "People's Republic of Bangladesh",
// "Gônôprôjatôntri Bangladesh"
// ],
// "region": "Asia",
// "subregion": "Southern Asia",
// "languages": {
// "ben": "Bengali"
// },
// "latlng": [
// 24,
// 90
// ],
// "landlocked": false,
// "borders": [
// "MMR",
// "IND"
// ],
// "area": 147570,
// "demonyms": {
// "eng": {
// "f": "Bangladeshi",
// "m": "Bangladeshi"
// },
// "fra": {
// "f": "Bangladaise",
// "m": "Bangladais"
// }
// },
// "cca3": "BGD",
// "translations": {
// "ara": {
// "official": "جمهورية بنغلاديش الشعبية",
// "common": "بنغلاديش"
// },
// "bre": {
// "official": "Republik pobl Bangladesh",
// "common": "Bangladesh"
// },
// "ces": {
// "official": "Bangladéšská lidová republika",
// "common": "Bangladéš"
// },
// "cym": {
// "official": "Gweriniaeth Pobl Bangladesh",
// "common": "Bangladesh"
// },
// "deu": {
// "official": "Volksrepublik Bangladesch",
// "common": "Bangladesch"
// },
// "est": {
// "official": "Bangladeshi Rahvavabariik",
// "common": "Bangladesh"
// },
// "fin": {
// "official": "Bangladeshin kansantasavalta",
// "common": "Bangladesh"
// },
// "fra": {
// "official": "La République populaire du Bangladesh",
// "common": "Bangladesh"
// },
// "hrv": {
// "official": "Narodna Republika Bangladeš",
// "common": "Bangladeš"
// },
// "hun": {
// "official": "Banglades",
// "common": "Banglades"
// },
// "ind": {
// "official": "Republik Rakyat Bangladesh",
// "common": "Bangladesh"
// },
// "ita": {
// "official": "Repubblica popolare del Bangladesh",
// "common": "Bangladesh"
// },
// "jpn": {
// "official": "バングラデシュ人民共和国",
// "common": "バングラデシュ"
// },
// "kor": {
// "official": "방글라데시 인민 공화국",
// "common": "방글라데시"
// },
// "nld": {
// "official": "Volksrepubliek Bangladesh",
// "common": "Bangladesh"
// },
// "per": {
// "official": "جمهوری خلق بنگلادش",
// "common": "بنگلادش"
// },
// "pol": {
// "official": "Ludowa Republika Bangladeszu",
// "common": "Bangladesz"
// },
// "por": {
// "official": "República Popular do Bangladesh",
// "common": "Bangladesh"
// },
// "rus": {
// "official": "Народная Республика Бангладеш",
// "common": "Бангладеш"
// },
// "slk": {
// "official": "Bangladéšska ľudová republika",
// "common": "Bangladéš"
// },
// "spa": {
// "official": "República Popular de Bangladesh",
// "common": "Bangladesh"
// },
// "srp": {
// "official": "Народна Република Бангладеш",
// "common": "Бангладеш"
// },
// "swe": {
// "official": "Folkrepubliken Bangladesh",
// "common": "Bangladesh"
// },
// "tur": {
// "official": "Bangladeş Halk Cumhuriyeti",
// "common": "Bangladeş"
// },
// "urd": {
// "official": "عوامی جمہوریہ بنگلہ دیش",
// "common": "بنگلہ دیش"
// },
// "zho": {
// "official": "孟加拉人民共和国",
// "common": "孟加拉国"
// }
// },
// "flag": "🇧🇩",
// "maps": {
// "googleMaps": "https://goo.gl/maps/op6gmLbHcvv6rLhH6",
// "openStreetMaps": "https://www.openstreetmap.org/relation/184640"
// },
// "population": 164689383,
// "gini": {
// "2016": 32.4
// },
// "fifa": "BAN",
// "car": {
// "signs": [
// "BD"
// ],
// "side": "left"
// },
// "timezones": [
// "UTC+06:00"
// ],
// "continents": [
// "Asia"
// ],
// "flags": {
// "png": "https://flagcdn.com/w320/bd.png",
// "svg": "https://flagcdn.com/bd.svg",
// "alt": "The flag of Bangladesh has a dark green field bearing a large red circle that is offset slightly towards the hoist side of center."
// },
// "coatOfArms": {
// "png": "https://mainfacts.com/media/images/coats_of_arms/bd.png",
// "svg": "https://mainfacts.com/media/images/coats_of_arms/bd.svg"
// },
// "startOfWeek": "sunday",
// "capitalInfo": {
// "latlng": [
// 23.72,
// 90.4
// ]
// },
// "postalCode": {
// "format": "####",
// "regex": "^(\\d{4})$"
// }
// },];
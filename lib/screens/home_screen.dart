import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/ecommerce_home.dart';
import 'package:my_flutter_app/screens/home_screen_2.dart';
import 'package:my_flutter_app/screens/ui/api_call_screen.dart';
import 'package:my_flutter_app/screens/ui/appbar_screen.dart';
import 'package:my_flutter_app/screens/ui/card_screen.dart';
import 'package:my_flutter_app/screens/ui/contact_screen.dart';
import 'package:my_flutter_app/screens/ui/container_screen.dart';
import 'package:my_flutter_app/screens/ui/expanded_screen.dart';
import 'package:my_flutter_app/screens/ui/grid_view_screen.dart';
import 'package:my_flutter_app/screens/ui/list_view_builder_screen.dart';
import 'package:my_flutter_app/screens/ui/list_view_screen.dart';
import 'package:my_flutter_app/screens/ui/scrollable_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text('Flutter UI Kids',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              )
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: const Text(
                      'Flutter UI Kids By Ahmed',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),


                  // Scrollable Row Start
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        GridView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 15,
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
                                color: Colors.orange.shade700,
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(topic['name']!,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
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
        ),
    );
  }
}

// products api
// https://dummyjson.com/products

// https://restcountries.com/


// Country Details
// https://restcountries.com/v3.1/independent?status=true


List<Map<String
, dynamic>> topics = [
  {
    'name': 'Scrollable Row',
    'screen': ScrollableRowScreen(),
  },
  {
    'name': 'Grid View Builder',
    'screen': GridViewScreen(), // Replace with actual screen widget
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
    'name': 'Stack & Positioned',
    'screen': CardScreen(), // Replace with actual screen widget
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
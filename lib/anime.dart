import 'dart:convert';
import 'package:http/http.dart' as http;

class Animationn {
  String Season;
  String Name;
  String Date;
  String image;
  String description;

  Animationn(this.Date, this.Name, this.Season, this.image, this.description);

  @override
  String toString() {
    return """Name: $Name 
Season: $Season
Release: $Date""";
  }
}

List<Animationn> AS = [];

Future<void> fetch() async {
  const String url = 'http://localhost:8080/index.php';

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      if (jsonData['success'] == true) {
        final List<dynamic> data = jsonData['data'];

        AS = data.map((item) {
          return Animationn(
            item['date'] as String,
            item['name'] as String,
            item['season'] as String,
            item['image'] as String,
            item['description'] as String,
          );
        }).toList();
      } else {
        print('API response indicates failure.');
      }
    } else {
      print('Failed to fetch data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
  }
}


//   Animation(
//       "January 2025",
//       "Jujutsu Kaisen",
//       "Season 3",
//       "assets/images/JJK.jpg",
//       "Jujutsu Kaisen follows sorcerers who battle malevolent curses using powerful jujutsu techniques."),
//   Animation(
//       "October 2025",
//       "Demon Slayer",
//       "Season 5",
//       "assets/images/DemonSlayer.webp",
//       "Demon Slayer follows Tanjiro, a kind-hearted boy turned demon slayer, on a quest to save his sister and defeat evil demons."),
//   Animation(
//       "16th December 2024",
//       "Fate Grand Order",
//       "Season 4",
//       "assets/images/FateGrandOrder.jpg",
//       "Fate/Grand Order follows masters and heroic spirits summoned from history and legend to fight in epic battles across time.")
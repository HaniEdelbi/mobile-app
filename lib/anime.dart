class Animation {
  String Season;
  String Name;
  String Date;
  String image;
  String description;

  Animation(this.Date, this.Name, this.Season, this.image, this.description);

  @override
  String toString() {
    return """Name: $Name 
Season: $Season
Release: $Date""";
  }
}

List<Animation> AS = [
  Animation(
      "January 2025",
      "Jujutsu Kaisen",
      "Season 3",
      "assets/images/JJK.jpg",
      "Jujutsu Kaisen follows sorcerers who battle malevolent curses using powerful jujutsu techniques."),
  Animation(
      "October 2025",
      "Demon Slayer",
      "Season 5",
      "assets/images/DemonSlayer.webp",
      "Demon Slayer follows Tanjiro, a kind-hearted boy turned demon slayer, on a quest to save his sister and defeat evil demons."),
  Animation(
      "16th December 2024",
      "Fate Grand Order",
      "Season 4",
      "assets/images/FateGrandOrder.jpg",
      "Fate/Grand Order follows masters and heroic spirits summoned from history and legend to fight in epic battles across time.")
];

// AS stands for Animated Shows/Series.

class Pepole {
  final int id;
  final int rank, score;
  final String name, image;

  const Pepole({
    required this.id,
    required this.score,
    required this.name,
    required this.image,
    required this.rank,
  });

  static const List<Pepole> pepoles = [
    Pepole(
        id: 1,
        score: 60,
        name: 'فرهاد رضوانی',
        image: 'assets/icons/user.png',
        rank: 1),
    Pepole(
        id: 1,
        score: 50,
        name: 'محسن وفائی',
        image: 'assets/icons/user.png',
        rank: 2),
    Pepole(
        id: 1,
        score: 50,
        name: 'شایان قدریان',
        image: 'assets/icons/user.png',
        rank: 2),
  ];
}

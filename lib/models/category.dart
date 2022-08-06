class Category {
  final String title, image;
  final int id;

  const Category({required this.id, required this.title, required this.image});

  static const List<Category> categories = [
    Category(
      id: 1,
      title: 'همه محصولات',
      image: "assets/images/54.jpg",
    ),
    Category(
      id: 2,
      title: 'آبمیوه های گازدار',
      image: "assets/images/46.jpg",
    ),
    Category(
      id: 3,
      title: 'ماء الشعیر',
      image: "assets/images/895.jpg",
    ),
    Category(
      id: 4,
      title: 'نکتار ',
      image: "assets/images/893.jpg",
    ),
    Category(
      id: 5,
      title: 'دوغ ها',
      image: "assets/images/ALIC-H-1.jpg",
    ),
    Category(
      id: 5,
      title: 'ویت بار',
      image: "assets/images/891.jpg",
    ),
    Category(
      id: 5,
      title: 'نوشابه ها',
      image: "assets/images/894.png",
    ),
  ];
}

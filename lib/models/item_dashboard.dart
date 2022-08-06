class ItemDashboard {
  final int id;
  final String title, image;

  ItemDashboard(
      {required this.id,
      required this.title,
      required this.image});
}

List<ItemDashboard> items = [
  ItemDashboard(
      id: 1,
      title: 'باشگاه من',
      image: "assets/images/28.jpg",),
  ItemDashboard(
      id: 2,
      title: 'آدرس های منتخب',
      image: "assets/images/23.jpg",),
  ItemDashboard(
      id: 3,
      title: 'سفارشات من',
      image: "assets/images/13.jpg",),
  ItemDashboard(
      id: 4,
      title: 'خرید آنلاین',
      image: "assets/images/17.png",),
  ItemDashboard(
      id: 5,
      title: 'صورت حساب',
      image: "assets/images/28.jpg",),
  ItemDashboard(
      id: 5,
      title: 'پرداخت',
      image: "assets/images/28.jpg",),
  ItemDashboard(
      id: 5,
      title: 'خریدهای من',
      image: "assets/images/28.jpg",),
  ItemDashboard(
      id: 5,
      title: 'شارژ کیف پول',
      image: "assets/images/28.jpg",),
  ItemDashboard(
      id: 5,
      title: 'قرعه کشی',
      image: "assets/images/28.jpg",),
];

class Product3 {
  final int id, price;
  final double rank;
  final String title, title2, title3, title4, description, image;

  Product3({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.rank,
    required this.title2,
    required this.title3,
    required this.title4,
  });
}

class AllProducts3 {
  static List<Product3> get products3 {
    return [
      Product3(
          id: 1,
          rank: 4.3,
          price: 120000,
          title: 'با عالیس به جام جهانی بروید!',
          title2: 'در قرعه کشی 10 سفر به قطر شرکت کنید',
          title3: '1401/04/24',
          title4: 'شرکت در قرعه کشی',
          image: "assets/images/34.jpg",
          description:
              'آبمیوه گازدار پرتقال انبه عالیس یک ترکیب خوشمزه و دوست‌داشتنی از دو میوه‌ی پرخاصیت انبه و پرتقال است.'),
      Product3(
          id: 2,
          rank: 3.3,
          price: 100000,
          title: 'دریافت امتیاز، ساده تر از همیشه',
          title2: 'با نظر دهی به محصولات امتیاز دریافت کنید',
          title3: '1401/04/22',
          title4: 'راه های دریافت امتیاز',
          image: "assets/images/33.jpg",
          description:
              'آبمیوه گازدار لیمو ترش عالیس به‌طور کلی یک نوشیدنی بسیار کم کالری محسوب می‌شود.'),
      Product3(
          id: 3,
          rank: 4,
          price: 80000,
          title: 'امکانات جدید نرم افزار عالیس',
          title2: 'از آخرین امکانات نرم افزار با خبر شوید',
          title3: '1401/04/20',
          title4: 'ارسال پیشنهادات و انتقادات',
          image: "assets/images/35.jpg",
          description:
              'در بین همه نوشیدنی‌هایی که از ترکیب شیر با مواد مختلف درست می‌شود، شیرکاکائو را می‌توان با اختلاف محبوب‌ترین نمونه به حساب آورد.'),
    ];
  }
}

class Category3 {
  final String title, image;
  final int id;

  Category3({required this.id, required this.title, required this.image});
}

class Categories3 {
  static List<Category3> get category3 {
    return [
      Category3(
        id: 1,
        title: 'همه محصولات',
        image: "assets/images/20.jpg",
      ),
      Category3(
        id: 2,
        title: 'آبمیوه های گازدار',
        image: "assets/images/23.jpg",
      ),
      Category3(
        id: 3,
        title: 'ماء الشعیر',
        image: "assets/images/22.jpg",
      ),
      Category3(
        id: 4,
        title: 'نکتار آناناس عالیس',
        image: "assets/images/20.jpg",
      ),
      Category3(
        id: 5,
        title: 'شیر طعم دار',
        image: "assets/images/23.jpg",
      )
    ];
  }
}

class Pepole3 {
  final int id;
  final int rank, score;
  final String name, image;

  Pepole3({
    required this.id,
    required this.score,
    required this.name,
    required this.image,
    required this.rank,
  });
}

class AllPepole3 {
  static List<Pepole3> get pepoles3 {
    return [
      Pepole3(
          id: 1,
          score: 45,
          name: 'محسن وفائی',
          image: 'assets/stories/story_5.jpg',
          rank: 1),
      Pepole3(
          id: 1,
          score: 50,
          name: 'عباس صدیق رضوانی',
          image: 'assets/stories/story_8.jpg',
          rank: 2),
      Pepole3(
          id: 1,
          score: 50,
          name: 'شایان قدریان',
          image: 'assets/stories/story_10.jpg',
          rank: 2),
    ];
  }
}

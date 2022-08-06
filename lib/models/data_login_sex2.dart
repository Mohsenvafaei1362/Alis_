class Product6 {
  final int id, price;
  final double rank;
  final String title, description, image;

  Product6({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.rank,
  });
}

class AllProducts6 {
  static List<Product6> get products6 {
    return [
      Product6(
          id: 1,
          rank: 4.3,
          price: 12000,
          title: 'کارت ملی ',
          image: "assets/images/upload.png",
          description:
              'آبمیوه گازدار پرتقال انبه عالیس یک ترکیب خوشمزه و دوست‌داشتنی از دو میوه‌ی پرخاصیت انبه و پرتقال است.'),
      Product6(
          id: 2,
          rank: 3.3,
          price: 10000,
          title: 'پشت کارت ملی',
          image: "assets/images/upload.png",
          description:
              'آبمیوه گازدار لیمو ترش عالیس به‌طور کلی یک نوشیدنی بسیار کم کالری محسوب می‌شود.'),
      Product6(
          id: 3,
          rank: 4,
          price: 80000,
          title: 'جواز کسب',
          image: "assets/images/upload.png",
          description:
              'در بین همه نوشیدنی‌هایی که از ترکیب شیر با مواد مختلف درست می‌شود، شیرکاکائو را می‌توان با اختلاف محبوب‌ترین نمونه به حساب آورد.'),
      Product6(
          id: 4,
          rank: 3.5,
          price: 8500,
          title: 'صفحه اول شناسنامه',
          image: "assets/images/upload.png",
          description:
              'اگر آناناس دوست دارید، احتمالا آبمیوه آناناس عالیس را نیز دوست دارید. یکی از موادی که معمولا به آن اضافه می‌شود، اسید اسکوربیک است که به عنوان ویتامین C نیز شناخته می‌شود.'),
      // Product5(
      //     id: 5,
      //     rank: 4.7,
      //     price: 85000,
      //     title: 'شیر مالت',
      //     image: "assets/images/50.jpg",
      //     description:
      //         '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
      // Product5(
      //     id: 6,
      //     rank: 3.8,
      //     price: 85000,
      //     title: 'آبمیوه گازدار پرتغال',
      //     image: "assets/images/46.jpg",
      //     description:
      //         '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
      // Product5(
      //     id: 7,
      //     rank: 4.3,
      //     price: 85000,
      //     title: 'شیر توت فرنگی',
      //     image: "assets/images/44.jpg",
      //     description:
      //         '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
    ];
  }
}

class Category6 {
  final String title, image;
  final int id;

  Category6({required this.id, required this.title, required this.image});
}

class Categories6 {
  static List<Category6> get category6 {
    return [
      Category6(
        id: 1,
        title: 'همه محصولات',
        image: "assets/images/54.jpg",
      ),
      Category6(
        id: 2,
        title: 'آبمیوه های گازدار',
        image: "assets/images/46.jpg",
      ),
      Category6(
        id: 3,
        title: 'ماء الشعیر',
        image: "assets/images/895.jpg",
      ),
      Category6(
        id: 4,
        title: 'نکتار ',
        image: "assets/images/893.jpg",
      ),
      Category6(
        id: 5,
        title: 'دوغ ها',
        image: "assets/images/ALIC-H-1.jpg",
      ),
      Category6(
        id: 5,
        title: 'ویت بار',
        image: "assets/images/891.jpg",
      ),
      Category6(
        id: 5,
        title: 'نوشابه ها',
        image: "assets/images/894.png",
      ),
    ];
  }
}

class Pepole6 {
  final int id;
  final int rank, score;
  final String name, image;

  Pepole6({
    required this.id,
    required this.score,
    required this.name,
    required this.image,
    required this.rank,
  });
}

class AllPepole6 {
  static List<Pepole6> get pepoles6 {
    return [
      Pepole6(
          id: 1,
          score: 45,
          name: 'محسن وفائی',
          image: 'assets/stories/story_5.jpg',
          rank: 1),
      Pepole6(
          id: 1,
          score: 50,
          name: 'عباس صدیق رضوانی',
          image: 'assets/stories/story_8.jpg',
          rank: 2),
      Pepole6(
          id: 1,
          score: 50,
          name: 'شایان قدریان',
          image: 'assets/stories/story_10.jpg',
          rank: 2),
    ];
  }
}

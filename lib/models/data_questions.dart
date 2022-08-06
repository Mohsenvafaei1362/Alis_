class Product2 {
  final int id, price;
  final double rank;
  final String title, description, image;

  Product2({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.rank,
  });
}

class AllProducts2 {
  static List<Product2> get products2 {
    return [
      Product2(
          id: 1,
          rank: 4.3,
          price: 120000,
          title: 'در نقشه و GPS مشکل دارم',
          image: "assets/images/46.jpg",
          description:
              'آبمیوه گازدار پرتقال انبه عالیس یک ترکیب خوشمزه و دوست‌داشتنی از دو میوه‌ی پرخاصیت انبه و پرتقال است.'),
      Product2(
          id: 2,
          rank: 3.3,
          price: 100000,
          title: 'مشکل هنگ کردن نرم افزار',
          image: "assets/images/47.jpg",
          description:
              'آبمیوه گازدار لیمو ترش عالیس به‌طور کلی یک نوشیدنی بسیار کم کالری محسوب می‌شود.'),
      Product2(
          id: 3,
          rank: 4,
          price: 80000,
          title: 'سایر مشکلات نرم افزاری',
          image: "assets/images/51.jpg",
          description:
              'در بین همه نوشیدنی‌هایی که از ترکیب شیر با مواد مختلف درست می‌شود، شیرکاکائو را می‌توان با اختلاف محبوب‌ترین نمونه به حساب آورد.'),
      Product2(
          id: 4,
          rank: 3.5,
          price: 85000,
          title: 'درخواست بازگشایی حساب کاربری',
          image: "assets/images/45.jpg",
          description:
              'اگر آناناس دوست دارید، احتمالا آبمیوه آناناس عالیس را نیز دوست دارید. یکی از موادی که معمولا به آن اضافه می‌شود، اسید اسکوربیک است که به عنوان ویتامین C نیز شناخته می‌شود.'),
      Product2(
          id: 5,
          rank: 4.7,
          price: 85000,
          title: 'تغییر اطلاعات فردی',
          image: "assets/images/50.jpg",
          description:
              '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
      Product2(
          id: 6,
          rank: 3.8,
          price: 85000,
          title: 'جشنواره ها و تخفیف ها',
          image: "assets/images/46.jpg",
          description:
              '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
      Product2(
          id: 7,
          rank: 4.3,
          price: 85000,
          title: 'درخواست استرداد وجه دارم',
          image: "assets/images/44.jpg",
          description:
              '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
      Product2(
          id: 6,
          rank: 3.8,
          price: 85000,
          title: 'ارائه انتقادات و پیشنهادات',
          image: "assets/images/46.jpg",
          description:
              '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
    ];
  }
}

class Category2 {
  final String title, image;
  final int id;

  Category2({required this.id, required this.title, required this.image});
}

class Categories2 {
  static List<Category2> get category2 {
    return [
      Category2(
        id: 1,
        title: 'همه محصولات',
        image: "assets/images/20.jpg",
      ),
      Category2(
        id: 2,
        title: 'آبمیوه های گازدار',
        image: "assets/images/23.jpg",
      ),
      Category2(
        id: 3,
        title: 'ماء الشعیر',
        image: "assets/images/22.jpg",
      ),
      Category2(
        id: 4,
        title: 'نکتار آناناس عالیس',
        image: "assets/images/20.jpg",
      ),
      Category2(
        id: 5,
        title: 'شیر طعم دار',
        image: "assets/images/23.jpg",
      )
    ];
  }
}

class Pepole2 {
  final int id;
  final int rank, score;
  final String name, image;

  Pepole2({
    required this.id,
    required this.score,
    required this.name,
    required this.image,
    required this.rank,
  });
}

class AllPepole2 {
  static List<Pepole2> get pepoles2 {
    return [
      Pepole2(
          id: 1,
          score: 45,
          name: 'محسن وفائی',
          image: 'assets/stories/story_5.jpg',
          rank: 1),
      Pepole2(
          id: 1,
          score: 50,
          name: 'عباس صدیق رضوانی',
          image: 'assets/stories/story_8.jpg',
          rank: 2),
      Pepole2(
          id: 1,
          score: 50,
          name: 'شایان قدریان',
          image: 'assets/stories/story_10.jpg',
          rank: 2),
    ];
  }
}

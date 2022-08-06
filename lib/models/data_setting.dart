class Product4 {
  final int id, price;
  final double rank;
  final String title, description, image;

  Product4({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.rank,
  });
}

class AllProducts4 {
  static List<Product4> get products4 {
    return [
      Product4(
          id: 1,
          rank: 4.3,
          price: 120000,
          title: 'تغییر رمز ورود',
          image: "assets/icons/key (1).png",
          description:
              'آبمیوه گازدار پرتقال انبه عالیس یک ترکیب خوشمزه و دوست‌داشتنی از دو میوه‌ی پرخاصیت انبه و پرتقال است.'),
      // Product4(
      //     id: 2,
      //     rank: 3.3,
      //     price: 100000,
      //     title: 'ورود با اثر انگشت',
      //     image: "assets/icons/lock.png",
      //     description:
      //         'آبمیوه گازدار لیمو ترش عالیس به‌طور کلی یک نوشیدنی بسیار کم کالری محسوب می‌شود.'),
      Product4(
          id: 3,
          rank: 4,
          price: 80000,
          title: 'دستگاه های من',
          image: "assets/images/phone-message.png",
          description:
              'در بین همه نوشیدنی‌هایی که از ترکیب شیر با مواد مختلف درست می‌شود، شیرکاکائو را می‌توان با اختلاف محبوب‌ترین نمونه به حساب آورد.'),
      Product4(
          id: 4,
          rank: 3.5,
          price: 85000,
          title: 'فروشگاه های من',
          image: "assets/images/shop.png",
          description:
              'اگر آناناس دوست دارید، احتمالا آبمیوه آناناس عالیس را نیز دوست دارید. یکی از موادی که معمولا به آن اضافه می‌شود، اسید اسکوربیک است که به عنوان ویتامین C نیز شناخته می‌شود.'),
      Product4(
          id: 5,
          rank: 4.7,
          price: 85000,
          title: 'همکاران من',
          image: "assets/icons/share.png",
          description:
              '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
      Product4(
          id: 6,
          rank: 3.8,
          price: 85000,
          title: 'درخواست تغییر اطلاعات فروشگاه',
          image: "assets/icons/newspaper.png",
          description:
              '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
      Product4(
          id: 7,
          rank: 4.3,
          price: 85000,
          title: 'معرفی حساب بانکی',
          image: "assets/icons/savings.png",
          description:
              '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
      Product4(
          id: 8,
          rank: 3.8,
          price: 85000,
          title: 'درباره ما',
          image: "assets/icons/group.png",
          description:
              '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
    ];
  }
}

class Category4 {
  final String title, image;
  final int id;

  Category4({required this.id, required this.title, required this.image});
}

class Categories4 {
  static List<Category4> get category4 {
    return [
      Category4(
        id: 1,
        title: 'همه محصولات',
        image: "assets/images/20.jpg",
      ),
      Category4(
        id: 2,
        title: 'آبمیوه های گازدار',
        image: "assets/images/23.jpg",
      ),
      Category4(
        id: 3,
        title: 'ماء الشعیر',
        image: "assets/images/22.jpg",
      ),
      Category4(
        id: 4,
        title: 'نکتار آناناس عالیس',
        image: "assets/images/20.jpg",
      ),
      Category4(
        id: 5,
        title: 'شیر طعم دار',
        image: "assets/images/23.jpg",
      )
    ];
  }
}

class Pepole4 {
  final int id;
  final int rank, score;
  final String name, image;

  Pepole4({
    required this.id,
    required this.score,
    required this.name,
    required this.image,
    required this.rank,
  });
}

class AllPepole4 {
  static List<Pepole4> get pepoles2 {
    return [
      Pepole4(
          id: 1,
          score: 45,
          name: 'محسن وفائی',
          image: 'assets/stories/story_5.jpg',
          rank: 1),
      Pepole4(
          id: 1,
          score: 50,
          name: 'عباس صدیق رضوانی',
          image: 'assets/stories/story_8.jpg',
          rank: 2),
      Pepole4(
          id: 1,
          score: 50,
          name: 'شایان قدریان',
          image: 'assets/stories/story_10.jpg',
          rank: 2),
    ];
  }
}

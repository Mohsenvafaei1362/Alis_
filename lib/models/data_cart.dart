class Product5 {
  final int id, price;
  final double rank;
  final String title, description, image;

  Product5({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.rank,
  });
}

class AllProducts5 {
  static List<Product5> get products5 {
    return [
      Product5(
          id: 1,
          rank: 4.3,
          price: 12000,
          title: 'آبمیوه گازدار پرتقال انبه ',
          image: "assets/images/46.jpg",
          description:
              'آبمیوه گازدار پرتقال انبه عالیس یک ترکیب خوشمزه و دوست‌داشتنی از دو میوه‌ی پرخاصیت انبه و پرتقال است.'),
      Product5(
          id: 2,
          rank: 3.3,
          price: 10000,
          title: 'آبمیوه گازدار لیموترش',
          image: "assets/images/47.jpg",
          description:
              'آبمیوه گازدار لیمو ترش عالیس به‌طور کلی یک نوشیدنی بسیار کم کالری محسوب می‌شود.'),
      Product5(
          id: 3,
          rank: 4,
          price: 80000,
          title: 'شیر کاکائو ',
          image: "assets/images/62.png",
          description:
              'در بین همه نوشیدنی‌هایی که از ترکیب شیر با مواد مختلف درست می‌شود، شیرکاکائو را می‌توان با اختلاف محبوب‌ترین نمونه به حساب آورد.'),
      Product5(
          id: 4,
          rank: 3.5,
          price: 8500,
          title: 'آبمیوه انگور',
          image: "assets/images/45.jpg",
          description:
              'اگر آناناس دوست دارید، احتمالا آبمیوه آناناس عالیس را نیز دوست دارید. یکی از موادی که معمولا به آن اضافه می‌شود، اسید اسکوربیک است که به عنوان ویتامین C نیز شناخته می‌شود.'),
      Product5(
          id: 5,
          rank: 4.7,
          price: 85000,
          title: 'شیر مالت',
          image: "assets/images/63.png",
          description:
              '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
      Product5(
          id: 6,
          rank: 3.8,
          price: 85000,
          title: 'آبمیوه گازدار پرتغال',
          image: "assets/images/46.jpg",
          description:
              '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
      Product5(
          id: 7,
          rank: 4.3,
          price: 85000,
          title: 'شیر توت فرنگی',
          image: "assets/images/62.jpg",
          description:
              '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
     
    ];
  }
}

class Category5 {
  final String title, image;
  final int id;

  Category5({required this.id, required this.title, required this.image});
}

class Categories {
  static List<Category5> get category {
    return [
      Category5(
        id: 1,
        title: 'همه محصولات',
        image: "assets/images/54.jpg",
      ),
      Category5(
        id: 2,
        title: 'آبمیوه های گازدار',
        image: "assets/images/46.jpg",
      ),
      Category5(
        id: 3,
        title: 'ماء الشعیر',
        image: "assets/images/895.jpg",
      ),
      Category5(
        id: 4,
        title: 'نکتار ',
        image: "assets/images/893.jpg",
      ),
      Category5(
        id: 5,
        title: 'دوغ ها',
        image: "assets/images/ALIC-H-1.jpg",
      ),
      Category5(
        id: 5,
        title: 'ویت بار',
        image: "assets/images/891.jpg",
      ),
      Category5(
        id: 5,
        title: 'نوشابه ها',
        image: "assets/images/894.png",
      ),
    ];
  }
}

class Pepole5 {
  final int id;
  final int rank, score;
  final String name, image;

  Pepole5({
    required this.id,
    required this.score,
    required this.name,
    required this.image,
    required this.rank,
  });
}

class AllPepole5 {
  static List<Pepole5> get pepoles {
    return [
      Pepole5(
          id: 1,
          score: 45,
          name: 'محسن وفائی',
          image: 'assets/stories/story_5.jpg',
          rank: 1),
      Pepole5(
          id: 1,
          score: 50,
          name: 'عباس صدیق رضوانی',
          image: 'assets/stories/story_8.jpg',
          rank: 2),
      Pepole5(
          id: 1,
          score: 50,
          name: 'شایان قدریان',
          image: 'assets/stories/story_10.jpg',
          rank: 2),
    ];
  }
}

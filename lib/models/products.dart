class Product {
  final int id, price;
  final double rank;
  final String title, description, image, category;

  const Product({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.rank,
    required this.category,
  });

  static const List<Product> products = [
    Product(
        id: 1,
        category: 'ab',
        rank: 4.3,
        price: 120000,
        title: 'آبمیوه گازدار پرتقال انبه عالیس',
        image: "assets/images/46.jpg",
        description:
            'آبمیوه گازدار پرتقال انبه عالیس یک ترکیب خوشمزه و دوست‌داشتنی از دو میوه‌ی پرخاصیت انبه و پرتقال است.'),
    Product(
        id: 2,
        category: 'ab',
        rank: 3.3,
        price: 100000,
        title: 'آبمیوه گازدار لیموترش (لیموناد) عالیس',
        image: "assets/images/47.jpg",
        description:
            'آبمیوه گازدار لیمو ترش عالیس به‌طور کلی یک نوشیدنی بسیار کم کالری محسوب می‌شود.'),
    Product(
        id: 3,
        category: 'milk',
        rank: 4,
        price: 80000,
        title: 'شیر کاکائو عالیس',
        image: "assets/images/62.png",
        description:
            'در بین همه نوشیدنی‌هایی که از ترکیب شیر با مواد مختلف درست می‌شود، شیرکاکائو را می‌توان با اختلاف محبوب‌ترین نمونه به حساب آورد.'),
    Product(
        id: 4,
        category: 'ab',
        rank: 3.5,
        price: 85000,
        title: 'آبمیوه انگور',
        image: "assets/images/45.jpg",
        description:
            'اگر آناناس دوست دارید، احتمالا آبمیوه آناناس عالیس را نیز دوست دارید. یکی از موادی که معمولا به آن اضافه می‌شود، اسید اسکوربیک است که به عنوان ویتامین C نیز شناخته می‌شود.'),
    Product(
        id: 5,
        category: 'milk',
        rank: 4.7,
        price: 85000,
        title: 'شیر مالت',
        image: "assets/images/63.png",
        description:
            '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
    Product(
        id: 6,
        category: 'ab',
        rank: 3.8,
        price: 85000,
        title: 'آبمیوه گازدار پرتغال',
        image: "assets/images/46.jpg",
        description:
            '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
    Product(
        id: 7,
        category: 'milk',
        rank: 4.3,
        price: 85000,
        title: 'شیر توت فرنگی',
        image: "assets/images/62.jpg",
        description:
            '“شیر مالت عالیس” بعد از طی مدت زمان کوتاهی که در کنار شما مشتریان عزیز نبود و با توجه به درخواست‌های شما، مجدد در چرخه تولید قرار گرفت و به بازار عرضه شد.'),
  ];
}

import 'package:flutter/physics.dart';

class Product7 {
  final int id, price;
  final double rank;
  final String title,
      title2,
      title3,
      title4,
      title5,
      title6,
      title7,
      title8,
      title9,
      description,
      image;

  Product7({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.rank,
    required this.title2,
    required this.title3,
    required this.title4,
    required this.title5,
    required this.title6,
    required this.title7,
    required this.title8,
    required this.title9,
  });
}

class AllProducts7 {
  static List<Product7> get products7 {
    return [
      Product7(
          id: 1,
          rank: 4.3,
          price: 120000,
          title: 'فروشگاه طالقانی',
          title2: 'اصلی',
          title3: 'وضعیت فروشگاه',
          title4: 'فعال',
          title5: 'کل خرید',
          title6: 'شماره تماس',
          title7: '05131872',
          title8: 'آدرس',
          title9: 'نبش طالقانی 3',
          image: "assets/images/shop.png",
          description:
              'آبمیوه گازدار پرتقال انبه عالیس یک ترکیب خوشمزه و دوست‌داشتنی از دو میوه‌ی پرخاصیت انبه و پرتقال است.'),
      Product7(
          id: 2,
          rank: 3.3,
          price: 100000,
          title: 'فروشگاه عبادی',
          title2: 'شعبه 2',
          title3: 'وضعیت فروشگاه',
          title4: 'فعال',
          title5: 'کل خرید',
          title6: 'شماره تماس',
          title7: '05135989',
          title8: 'آدرس',
          title9: 'عبادی 88، فارمد 2',
          image: "assets/images/shop.png",
          description:
              'آبمیوه گازدار لیمو ترش عالیس به‌طور کلی یک نوشیدنی بسیار کم کالری محسوب می‌شود.'),
      Product7(
          id: 3,
          rank: 4,
          price: 80000,
          title: 'فروشگاه طبرسی',
          title2: 'شعبه 3',
          title3: 'وضعیت فروشگاه',
          title4: 'فعال',
          title5: 'کل خرید',
          title6: 'شماره تماس',
          title7: '05137848',
          title8: 'آدرس',
          title9: 'طبرسی 28، خالقی 12',
          image: "assets/images/shop.png",
          description:
              'در بین همه نوشیدنی‌هایی که از ترکیب شیر با مواد مختلف درست می‌شود، شیرکاکائو را می‌توان با اختلاف محبوب‌ترین نمونه به حساب آورد.'),
    ];
  }
}

class NAmeShop {
  final String title, title2;
  final int id;

  NAmeShop({
    required this.title,
    required this.title2,
    required this.id,
  });
}

class AllNameShop {
  static List<NAmeShop> get nameshop {
    return [
      NAmeShop(
        id: 1,
        title: 'فروشگاه طالقانی',
        title2: 'اصلی',
      ),
      NAmeShop(
        id: 2,
        title: 'فروشگاه عبادی',
        title2: 'شعبه 2',
      ),
      NAmeShop(
        id: 3,
        title: 'فروشگاه طبرسی',
        title2: 'شعبه 3',
      ),
    ];
  }
}

class PersonnelShop {
  final String title, title2, image;
  final int id;

  PersonnelShop({
    required this.title,
    required this.title2,
    required this.image,
    required this.id,
  });
}

class AllPersonnelShop {
  static List<PersonnelShop> get personnelShop {
    return [
      PersonnelShop(
        id: 1,
        title: 'محسن وفایی',
        title2: 'فروشگاه طالقانی',
        image: 'assets/icons/user.png',
      ),
      PersonnelShop(
        id: 2,
        title: 'شایان قدریان',
        title2: 'فروشگاه عبادی',
        image: 'assets/icons/user.png',
      ),
      PersonnelShop(
        id: 3,
        title: 'جواد امامی',
        title2: 'فروشگاه طبرسی',
        image: 'assets/icons/user.png',
      ),
    ];
  }
}

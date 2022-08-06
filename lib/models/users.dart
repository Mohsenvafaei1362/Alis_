class Users {
  final int id, phone, rank;
  final double score;
  final String username, password, image, email, fname, lname;

  Users({
    required this.id,
    required this.fname,
    required this.lname,
    required this.username,
    required this.password,
    required this.phone,
    required this.email,
    required this.image,
    required this.rank,
    required this.score,
  });
}

class AllUsers {
  static List<Users> get users {
    return [
      Users(
          id: 1,
          fname: 'محسن',
          lname: 'وفائی',
          username: 'Mohsen Vafaei',
          password: '123456',
          phone: 0915235456,
          email: 'vafaee.mohsen60@gmail.com',
          image: 'assets/stories/story_5.jpg',
          rank: 1,
          score: 150),
      Users(
          id: 2,
          fname: 'فرهاد',
          lname: 'رضوانی',
          username: 'Farhad Rezvani',
          password: '123456',
          phone: 0898545555,
          email: 'rezvani@gmail.com',
          image: 'assets/stories/story_8.jpg',
          rank: 2,
          score: 140),
      Users(
          id: 3,
          fname: 'شایان',
          lname: 'قدریان',
          username: 'Shayan Ghadriyan',
          password: '987654',
          phone: 093895222,
          email: 'ghadriyan@gmail.com',
          image: 'assets/stories/story_8.jpg',
          rank: 3,
          score: 120),
    ];
  }
}

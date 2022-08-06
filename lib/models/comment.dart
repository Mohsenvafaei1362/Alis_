class Comment {
  final int id;
  final String title, description;

  const Comment({
    required this.id,
    required this.title,
    required this.description,
  });
  static const List<Comment> comments = [
    Comment(id: 1, title: 'محصولی خوش مزه', description: 'معطر و دلنشین '),
    Comment(id: 2, title: 'کیفیت خوب', description: 'نوشیدنی کم کالری'),
    Comment(id: 3, title: 'محصولی خوش مزه', description: 'معطر و دلنشین '),
    Comment(id: 4, title: 'کیفیت خوب', description: 'نوشیدنی کم کالری'),
    Comment(id: 5, title: 'کیفیت خوب', description: 'نوشیدنی کم کالری'),
    Comment(id: 6, title: 'کیفیت خوب', description: 'نوشیدنی کم کالری'),
    Comment(id: 7, title: 'کیفیت خوب', description: 'نوشیدنی کم کالری'),
  ];
}

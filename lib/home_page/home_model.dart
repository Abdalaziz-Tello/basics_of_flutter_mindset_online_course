// ignore_for_file: public_member_api_docs, sort_constructors_first
class Article {
  int id;
  String title;
  String body;
  Article({required this.id, required this.title, required this.body});

  static Article fromMap(Map<String, dynamic> data) {
    return Article(id: data['userId'], title: data['title'], body: data['body']);
  }
}

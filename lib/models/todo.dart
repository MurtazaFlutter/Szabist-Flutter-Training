// ignore_for_file: public_member_api_docs, sort_constructors_first
class Todo {
  String? name;
  String? desc;
  bool? isCompleted;

  Todo({
    this.name,
    this.desc,
    this.isCompleted = false,
    required String title,
  });
}

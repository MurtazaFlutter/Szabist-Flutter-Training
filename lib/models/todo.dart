class Todo {
  late String id; // Firestore document ID
  late String title;
  late String desc;
  late bool isCompleted;

  Todo({
    required this.id,
    required this.title,
    required this.desc,
    required this.isCompleted,
  });

  // Convert Todo object to a Map
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'desc': desc,
      'isCompleted': isCompleted,
    };
  }

  // Create a Todo object from a Map
  factory Todo.fromMap(String id, Map<String, dynamic> map) {
    return Todo(
      id: id,
      title: map['title'],
      desc: map['desc'],
      isCompleted: map['isCompleted'],
    );
  }
}

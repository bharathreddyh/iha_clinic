import 'package:cloud_firestore/cloud_firestore.dart';

class Module {
  final String id;
  final String name;
  final String description;
  final String icon;
  final Map<String, dynamic> content;

  Module({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.content,
  });

  factory Module.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Module(
      id: doc.id,
      name: data['name'],
      description: data['description'],
      icon: data['icon'] ?? 'book',
      content: data['content'] ?? {},
    );
  }
}
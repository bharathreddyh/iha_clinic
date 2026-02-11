import 'package:cloud_firestore/cloud_firestore.dart';

class Registration {
  final String id;
  final String mobile;
  final List<String> moduleIds;
  final String accessToken;
  final DateTime createdAt;
  final DateTime expiresAt;
  final String clinicId;
  final bool accessed;

  Registration({
    required this.id,
    required this.mobile,
    required this.moduleIds,
    required this.accessToken,
    required this.createdAt,
    required this.expiresAt,
    required this.clinicId,
    required this.accessed,
  });

  factory Registration.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Registration(
      id: doc.id,
      mobile: data['mobile'],
      moduleIds: List<String>.from(data['moduleIds']),
      accessToken: data['accessToken'],
      createdAt: DateTime.parse(data['createdAt']),
      expiresAt: DateTime.parse(data['expiresAt']),
      clinicId: data['clinicId'],
      accessed: data['accessed'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'mobile': mobile,
      'moduleIds': moduleIds,
      'accessToken': accessToken,
      'createdAt': createdAt.toIso8601String(),
      'expiresAt': expiresAt.toIso8601String(),
      'clinicId': clinicId,
      'accessed': accessed,
    };
  }
}
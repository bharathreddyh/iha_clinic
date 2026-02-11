import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';
import '../models/registration.dart';
import '../models/module.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final _uuid = Uuid();

  // Create registration
  Future<Registration> createRegistration({
    required String mobile,
    required List<String> moduleIds,
  }) async {
    final token = _uuid.v4();
    final now = DateTime.now();
    final expiry = now.add(Duration(hours: 48));

    final registration = Registration(
      id: _uuid.v4(),
      mobile: mobile,
      moduleIds: moduleIds,
      accessToken: token,
      createdAt: now,
      expiresAt: expiry,
      clinicId: 'clinic_001',
      accessed: false,
    );

    await _db
        .collection('registrations')
        .doc(registration.id)
        .set(registration.toMap());

    return registration;
  }

  // Get registration by token
  Future<Registration?> getRegistrationByToken(String token) async {
    final snapshot = await _db
        .collection('registrations')
        .where('accessToken', isEqualTo: token)
        .limit(1)
        .get();

    if (snapshot.docs.isEmpty) return null;

    return Registration.fromFirestore(snapshot.docs.first);
  }

  // Get modules by IDs
  Future<List<Module>> getModulesByIds(List<String> moduleIds) async {
    final modules = <Module>[];

    for (final id in moduleIds) {
      final doc = await _db.collection('modules').doc(id).get();
      if (doc.exists) {
        modules.add(Module.fromFirestore(doc));
      }
    }

    return modules;
  }

  // Get all modules
  Future<List<Module>> getAllModules() async {
    final snapshot = await _db.collection('modules').get();
    return snapshot.docs.map((doc) => Module.fromFirestore(doc)).toList();
  }

  // Mark as accessed
  Future<void> markAsAccessed(String registrationId) async {
    await _db.collection('registrations').doc(registrationId).update({
      'accessed': true,
      'accessCount': FieldValue.increment(1),
      'lastAccessedAt': DateTime.now().toIso8601String(),
    });
  }
}
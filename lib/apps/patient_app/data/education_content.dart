import 'education_content_general.dart';
import 'education_content_gynaecology.dart';
import 'education_content_obstetrics.dart';

class EducationTopicData {
  final String titleEn;
  final String? titleKn;
  final List<Map<String, String>> sectionsEn;
  final List<Map<String, String>> sectionsKn;

  const EducationTopicData({
    required this.titleEn,
    this.titleKn,
    required this.sectionsEn,
    this.sectionsKn = const [],
  });
}

/// Central registry of all education module content.
/// Keyed by topic ID (used in routes as /edu/{topicId}).
final Map<String, EducationTopicData> educationTopics = {
  ...getGeneralContent(),
  ...getGynaecologyContent(),
  ...getObstetricsContent(),
};

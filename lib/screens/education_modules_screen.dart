import 'package:flutter/material.dart';
import '../core/widgets/hospital_app_bar.dart';

class EducationModulesScreen extends StatelessWidget {
  const EducationModulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hospitalAppBar(
        context,
        title: 'Education Modules',
        backgroundColor: const Color(0xFF0D1B2A),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSpecialtySection(
                  context,
                  title: 'General',
                  icon: Icons.health_and_safety_rounded,
                  color: const Color(0xFF1565C0),
                  modules: [],
                ),
                const SizedBox(height: 24),
                _buildSpecialtySection(
                  context,
                  title: 'Gynaecology',
                  icon: Icons.favorite_rounded,
                  color: const Color(0xFFAD1457),
                  subSections: [
                    // ── Ovarian Pathology ──
                    _SubSection(
                      title: 'Ovarian Cysts',
                      modules: [
                        _ModuleInfo(
                          title: 'Simple Ovarian Cyst',
                          description:
                              'Understanding simple (functional) ovarian cysts — the most common type of ovarian cyst.',
                          icon: Icons.water_drop,
                          route: '/simple-cyst',
                        ),
                        _ModuleInfo(
                          title: 'Hemorrhagic Ovarian Cyst',
                          description:
                              'Understanding hemorrhagic cysts — causes, symptoms, diagnosis, and treatment options.',
                          icon: Icons.monitor_heart,
                          route: '/hemorrhagic-cyst',
                        ),
                        _ModuleInfo(
                          title: 'Polycystic Ovaries',
                          description:
                              'Learn about polycystic ovaries and PCOS — hormonal imbalance, symptoms, and management.',
                          icon: Icons.medication,
                          route: '/polycystic-ovaries',
                        ),
                        _ModuleInfo(
                          title: 'Endometrioma (Chocolate Cyst)',
                          description:
                              'Understanding endometriomas — endometriosis-related ovarian cysts, diagnosis, and treatment.',
                          icon: Icons.favorite,
                          route: '/endometrioma',
                        ),
                        _ModuleInfo(
                          title: 'Dermoid Cyst (Teratoma)',
                          description:
                              'Learn about dermoid cysts — benign ovarian tumours containing diverse tissue types.',
                          icon: Icons.psychology,
                          route: '/dermoid-cyst',
                        ),
                      ],
                    ),
                    _SubSection(
                      title: 'Ovarian Tumours',
                      modules: [],
                    ),
                    _SubSection(
                      title: 'Ovarian Torsion',
                      modules: [],
                    ),
                    _SubSection(
                      title: 'Ovarian Hyperstimulation Syndrome (OHSS)',
                      modules: [],
                    ),
                    // ── Uterine Conditions ──
                    _SubSection(
                      title: 'Uterine Conditions',
                      modules: [],
                    ),
                    // ── Endometriosis ──
                    _SubSection(
                      title: 'Endometriosis',
                      modules: [],
                    ),
                    // ── Menstrual Disorders ──
                    _SubSection(
                      title: 'Menstrual Disorders',
                      modules: [],
                    ),
                    // ── Cervical Conditions ──
                    _SubSection(
                      title: 'Cervical Conditions',
                      modules: [],
                    ),
                    // ── Infections ──
                    _SubSection(
                      title: 'Infections',
                      modules: [],
                    ),
                    // ── Fertility & Reproductive Health ──
                    _SubSection(
                      title: 'Fertility & Reproductive Health',
                      modules: [],
                    ),
                    // ── Breast Conditions ──
                    _SubSection(
                      title: 'Breast Conditions',
                      modules: [],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                _buildSpecialtySection(
                  context,
                  title: 'Obstetrics',
                  icon: Icons.child_friendly_rounded,
                  color: const Color(0xFF2E7D32),
                  modules: [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSpecialtySection(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Color color,
    List<_ModuleInfo> modules = const [],
    List<_SubSection> subSections = const [],
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: color, size: 22),
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ...modules.map((module) => _buildModuleCard(context, module, color)),
        ...subSections.map((sub) => _buildSubSection(context, sub, color)),
      ],
    );
  }

  Widget _buildSubSection(
      BuildContext context, _SubSection sub, Color color) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 8),
            child: Text(
              sub.title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.grey[700],
              ),
            ),
          ),
          ...sub.modules.map((module) => _buildModuleCard(context, module, color)),
        ],
      ),
    );
  }

  Widget _buildModuleCard(
      BuildContext context, _ModuleInfo module, Color color) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, module.route),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(module.icon, color: color, size: 26),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      module.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      module.description,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[400]),
            ],
          ),
        ),
      ),
    );
  }
}

class _SubSection {
  final String title;
  final List<_ModuleInfo> modules;

  const _SubSection({
    required this.title,
    required this.modules,
  });
}

class _ModuleInfo {
  final String title;
  final String description;
  final IconData icon;
  final String route;

  const _ModuleInfo({
    required this.title,
    required this.description,
    required this.icon,
    required this.route,
  });
}

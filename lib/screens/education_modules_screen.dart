import 'package:flutter/material.dart';

class EducationModulesScreen extends StatelessWidget {
  const EducationModulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education Modules'),
        backgroundColor: const Color(0xFFAD1457).withValues(alpha: 0.15),
        foregroundColor: const Color(0xFFAD1457),
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
                  title: 'Gynaecology',
                  icon: Icons.favorite_rounded,
                  color: const Color(0xFFAD1457),
                  modules: [
                    _ModuleInfo(
                      title: 'Hemorrhagic Ovarian Cyst',
                      description:
                          'Understanding hemorrhagic cysts — causes, symptoms, diagnosis, and treatment options.',
                      icon: Icons.monitor_heart,
                      route: '/hemorrhagic-cyst',
                    ),
                  ],
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
    required List<_ModuleInfo> modules,
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
      ],
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

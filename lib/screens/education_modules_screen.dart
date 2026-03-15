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
                      modules: [
                        _ModuleInfo(
                          title: 'Serous Cystadenoma',
                          description: 'Common benign ovarian tumour filled with thin, watery fluid.',
                          icon: Icons.water_drop,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Mucinous Cystadenoma',
                          description: 'Benign ovarian tumour containing thick, mucus-like fluid.',
                          icon: Icons.water_drop,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Ovarian Fibroma',
                          description: 'Solid benign tumour of the ovary arising from stromal tissue.',
                          icon: Icons.water_drop,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    _SubSection(
                      title: 'Ovarian Torsion',
                      modules: [
                        _ModuleInfo(
                          title: 'Ovarian Torsion',
                          description: 'Emergency condition where the ovary twists on its blood supply.',
                          icon: Icons.warning_rounded,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    _SubSection(
                      title: 'Ovarian Hyperstimulation Syndrome (OHSS)',
                      modules: [
                        _ModuleInfo(
                          title: 'OHSS',
                          description: 'Ovarian hyperstimulation syndrome — a complication of fertility treatment.',
                          icon: Icons.medical_services,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Uterine Conditions ──
                    _SubSection(
                      title: 'Uterine Conditions',
                      modules: [
                        _ModuleInfo(
                          title: 'Fibroids (Leiomyoma)',
                          description: 'Non-cancerous growths of the uterus — causes, symptoms, and treatment.',
                          icon: Icons.circle,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Adenomyosis',
                          description: 'Condition where endometrial tissue grows into the uterine muscle wall.',
                          icon: Icons.circle,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Endometrial Polyps',
                          description: 'Overgrowths of the uterine lining — causes, diagnosis, and removal.',
                          icon: Icons.circle,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Uterine Prolapse',
                          description: 'When the uterus descends into the vaginal canal due to weakened support.',
                          icon: Icons.circle,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Asherman\'s Syndrome',
                          description: 'Intrauterine adhesions (scar tissue) — causes, symptoms, and treatment.',
                          icon: Icons.circle,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Endometriosis ──
                    _SubSection(
                      title: 'Endometriosis',
                      modules: [
                        _ModuleInfo(
                          title: 'Endometriosis',
                          description: 'Endometrial-like tissue growing outside the uterus — pain, infertility, and management.',
                          icon: Icons.spa,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Menstrual Disorders ──
                    _SubSection(
                      title: 'Menstrual Disorders',
                      modules: [
                        _ModuleInfo(
                          title: 'Abnormal Uterine Bleeding (AUB)',
                          description: 'Heavy, prolonged, or irregular bleeding — causes and management.',
                          icon: Icons.bloodtype,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Dysmenorrhoea',
                          description: 'Painful periods — understanding primary and secondary causes.',
                          icon: Icons.bloodtype,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Amenorrhoea',
                          description: 'Absence of menstrual periods — causes, evaluation, and treatment.',
                          icon: Icons.bloodtype,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Premenstrual Syndrome (PMS/PMDD)',
                          description: 'Physical and emotional symptoms before menstruation — management strategies.',
                          icon: Icons.bloodtype,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Cervical Conditions ──
                    _SubSection(
                      title: 'Cervical Conditions',
                      modules: [
                        _ModuleInfo(
                          title: 'Cervical Erosion / Ectropion',
                          description: 'When cells from inside the cervix appear on the outer surface.',
                          icon: Icons.shield,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Cervical Polyps',
                          description: 'Small growths on the cervix — usually benign, causes and removal.',
                          icon: Icons.shield,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Cervical Cancer Screening',
                          description: 'Pap smear and HPV testing — importance of regular screening.',
                          icon: Icons.shield,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Infections ──
                    _SubSection(
                      title: 'Infections',
                      modules: [
                        _ModuleInfo(
                          title: 'Pelvic Inflammatory Disease (PID)',
                          description: 'Infection of the female reproductive organs — causes, symptoms, and treatment.',
                          icon: Icons.coronavirus,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Vaginal Candidiasis',
                          description: 'Yeast infection — common causes, symptoms, and treatment options.',
                          icon: Icons.coronavirus,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Bacterial Vaginosis',
                          description: 'Bacterial imbalance in the vagina — symptoms, diagnosis, and treatment.',
                          icon: Icons.coronavirus,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Sexually Transmitted Infections (STIs)',
                          description: 'Chlamydia, gonorrhoea, and other STIs — prevention, testing, and treatment.',
                          icon: Icons.coronavirus,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Fertility & Reproductive Health ──
                    _SubSection(
                      title: 'Fertility & Reproductive Health',
                      modules: [
                        _ModuleInfo(
                          title: 'Infertility Workup',
                          description: 'Understanding fertility evaluation — tests and investigations for couples.',
                          icon: Icons.child_care,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'IVF / IUI Basics',
                          description: 'Assisted reproduction techniques — what to expect from IVF and IUI.',
                          icon: Icons.child_care,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Ectopic Pregnancy',
                          description: 'Pregnancy outside the uterus — symptoms, diagnosis, and emergency management.',
                          icon: Icons.child_care,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Recurrent Pregnancy Loss',
                          description: 'Repeated miscarriages — causes, evaluation, and treatment options.',
                          icon: Icons.child_care,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Breast Conditions ──
                    _SubSection(
                      title: 'Breast Conditions',
                      modules: [
                        _ModuleInfo(
                          title: 'Fibroadenoma',
                          description: 'Common benign breast lump — understanding, diagnosis, and management.',
                          icon: Icons.healing,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Breast Cysts',
                          description: 'Fluid-filled sacs in the breast — causes, symptoms, and treatment.',
                          icon: Icons.healing,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Breast Self-Examination',
                          description: 'How to perform a breast self-exam — step-by-step guide for early detection.',
                          icon: Icons.healing,
                          route: '/coming-soon',
                        ),
                      ],
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

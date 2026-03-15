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
                  subSections: [
                    // ── Hormonal Health ──
                    _SubSection(
                      title: 'Hormonal Health',
                      modules: [
                        _ModuleInfo(
                          title: 'Menopause & Perimenopause',
                          description: 'Understanding the menopausal transition — symptoms, hormonal changes, and management.',
                          icon: Icons.thermostat,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Hormone Replacement Therapy (HRT)',
                          description: 'Benefits, risks, and types of HRT for managing menopausal symptoms.',
                          icon: Icons.medication_liquid,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'PCOS & Insulin Resistance',
                          description: 'The link between polycystic ovary syndrome and metabolic health.',
                          icon: Icons.monitor_heart,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Thyroid Disorders in Women',
                          description: 'Hypothyroidism and hyperthyroidism — impact on menstruation, fertility, and overall health.',
                          icon: Icons.accessibility_new,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Contraception ──
                    _SubSection(
                      title: 'Contraception',
                      modules: [
                        _ModuleInfo(
                          title: 'Oral Contraceptive Pills',
                          description: 'Combined and progestogen-only pills — how they work, benefits, and side effects.',
                          icon: Icons.medication,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Intrauterine Devices (IUD/IUS)',
                          description: 'Copper IUD and hormonal IUS — insertion, effectiveness, and suitability.',
                          icon: Icons.shield,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Injectable & Implant Contraceptives',
                          description: 'Depot injections and subdermal implants — long-acting reversible contraception.',
                          icon: Icons.vaccines,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Emergency Contraception',
                          description: 'Morning-after pill and copper IUD — options, timing, and effectiveness.',
                          icon: Icons.emergency,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Barrier Methods',
                          description: 'Condoms, diaphragms, and cervical caps — usage and effectiveness.',
                          icon: Icons.security,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Natural Family Planning',
                          description: 'Fertility awareness methods — tracking ovulation and fertility windows.',
                          icon: Icons.calendar_month,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Preventive Screening ──
                    _SubSection(
                      title: 'Preventive Screening',
                      modules: [
                        _ModuleInfo(
                          title: 'Pap Smear & HPV Testing',
                          description: 'Cervical cancer screening — when and how often to get tested.',
                          icon: Icons.biotech,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Mammography',
                          description: 'Breast cancer screening — age guidelines, what to expect, and follow-up.',
                          icon: Icons.medical_information,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Bone Density (DEXA) Screening',
                          description: 'Osteoporosis screening — who needs it and understanding results.',
                          icon: Icons.account_tree,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'HPV Vaccination',
                          description: 'Human papillomavirus vaccine — schedule, eligibility, and prevention of cervical cancer.',
                          icon: Icons.vaccines,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Nutrition & Lifestyle ──
                    _SubSection(
                      title: 'Nutrition & Lifestyle',
                      modules: [
                        _ModuleInfo(
                          title: 'Iron Deficiency & Anaemia',
                          description: 'Common in women — causes, symptoms, dietary sources, and supplementation.',
                          icon: Icons.bloodtype,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Calcium & Vitamin D',
                          description: 'Bone health essentials — dietary needs, supplementation, and preventing osteoporosis.',
                          icon: Icons.sunny,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Folic Acid & Preconception Nutrition',
                          description: 'Essential nutrients before and during pregnancy — neural tube defect prevention.',
                          icon: Icons.restaurant,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Exercise & Hormonal Health',
                          description: 'Physical activity during menstruation, pregnancy, and menopause — safe practices.',
                          icon: Icons.fitness_center,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Weight Management & Hormones',
                          description: 'How hormonal changes affect weight — strategies for healthy weight management.',
                          icon: Icons.monitor_weight,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Mental & Emotional Health ──
                    _SubSection(
                      title: 'Mental & Emotional Health',
                      modules: [
                        _ModuleInfo(
                          title: 'Postpartum Depression',
                          description: 'Recognising and managing depression after childbirth — when to seek help.',
                          icon: Icons.psychology,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Premenstrual Mood Disorders',
                          description: 'PMS and PMDD — emotional and psychological symptoms and coping strategies.',
                          icon: Icons.sentiment_dissatisfied,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Stress & Hormonal Imbalance',
                          description: 'How chronic stress affects reproductive hormones and overall wellbeing.',
                          icon: Icons.self_improvement,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Body Image & Self-Esteem',
                          description: 'Navigating body changes through puberty, pregnancy, and menopause.',
                          icon: Icons.favorite,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Pelvic Floor Health ──
                    _SubSection(
                      title: 'Pelvic Floor Health',
                      modules: [
                        _ModuleInfo(
                          title: 'Pelvic Floor Exercises (Kegels)',
                          description: 'Strengthening the pelvic floor — technique, benefits, and when to start.',
                          icon: Icons.fitness_center,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Urinary Incontinence',
                          description: 'Stress and urge incontinence in women — causes, types, and management.',
                          icon: Icons.water_drop,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Pelvic Organ Prolapse',
                          description: 'When pelvic organs descend due to weakened support — symptoms and treatment.',
                          icon: Icons.healing,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Adolescent Gynaecology ──
                    _SubSection(
                      title: 'Adolescent Gynaecology',
                      modules: [
                        _ModuleInfo(
                          title: 'Puberty & First Periods',
                          description: 'Understanding puberty in girls — physical changes, menarche, and what to expect.',
                          icon: Icons.child_care,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Menstrual Hygiene',
                          description: 'Products, practices, and education — pads, tampons, menstrual cups, and hygiene tips.',
                          icon: Icons.clean_hands,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Irregular Periods in Adolescents',
                          description: 'Why periods may be irregular in teens — when to be concerned.',
                          icon: Icons.calendar_today,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Perimenopause & Ageing ──
                    _SubSection(
                      title: 'Perimenopause & Ageing',
                      modules: [
                        _ModuleInfo(
                          title: 'Osteoporosis',
                          description: 'Bone loss after menopause — risk factors, prevention, and treatment.',
                          icon: Icons.accessibility,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Vaginal Atrophy',
                          description: 'Genitourinary syndrome of menopause — dryness, discomfort, and treatment options.',
                          icon: Icons.healing,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Cardiovascular Risk in Women',
                          description: 'Heart disease risk increases after menopause — awareness and prevention.',
                          icon: Icons.favorite,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Sexual Health After Menopause',
                          description: 'Addressing changes in libido, comfort, and intimacy during and after menopause.',
                          icon: Icons.spa,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                  ],
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
                          route: '/serous-cystadenoma',
                        ),
                        _ModuleInfo(
                          title: 'Mucinous Cystadenoma',
                          description: 'Benign ovarian tumour containing thick, mucus-like fluid.',
                          icon: Icons.water_drop,
                          route: '/mucinous-cystadenoma',
                        ),
                        _ModuleInfo(
                          title: 'Ovarian Fibroma',
                          description: 'Solid benign tumour of the ovary arising from stromal tissue.',
                          icon: Icons.water_drop,
                          route: '/ovarian-fibroma',
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
                  subSections: [
                    // ── Early Pregnancy ──
                    _SubSection(
                      title: 'Early Pregnancy',
                      modules: [
                        _ModuleInfo(
                          title: 'Confirming Pregnancy',
                          description: 'Home pregnancy tests, hCG levels, and early ultrasound — confirming and dating pregnancy.',
                          icon: Icons.check_circle,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'First Trimester Screening',
                          description: 'NT scan, double marker test, and early anomaly detection.',
                          icon: Icons.biotech,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Morning Sickness (Nausea & Vomiting)',
                          description: 'Causes and management of nausea in early pregnancy — when to seek medical help.',
                          icon: Icons.sick,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Hyperemesis Gravidarum',
                          description: 'Severe pregnancy sickness — symptoms, risks, and hospital management.',
                          icon: Icons.local_hospital,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Miscarriage (Early Pregnancy Loss)',
                          description: 'Types, causes, symptoms, and emotional support after miscarriage.',
                          icon: Icons.heart_broken,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Ectopic Pregnancy',
                          description: 'Pregnancy implanting outside the uterus — emergency signs, diagnosis, and treatment.',
                          icon: Icons.warning_rounded,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Molar Pregnancy',
                          description: 'Gestational trophoblastic disease — types, diagnosis, and follow-up.',
                          icon: Icons.medical_services,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Antenatal Care ──
                    _SubSection(
                      title: 'Antenatal Care',
                      modules: [
                        _ModuleInfo(
                          title: 'Routine Antenatal Visits',
                          description: 'Schedule of check-ups, tests, and what to expect at each visit.',
                          icon: Icons.calendar_month,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Antenatal Blood Tests',
                          description: 'Blood group, Rh factor, haemoglobin, infections screening, and glucose tests.',
                          icon: Icons.bloodtype,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Ultrasound Scans in Pregnancy',
                          description: 'Dating scan, anomaly scan, growth scans — what each scan checks for.',
                          icon: Icons.monitor,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Nutrition During Pregnancy',
                          description: 'Essential nutrients, foods to avoid, weight gain guidelines, and supplements.',
                          icon: Icons.restaurant,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Exercise During Pregnancy',
                          description: 'Safe physical activities, yoga, walking — benefits and precautions.',
                          icon: Icons.fitness_center,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Vaccinations in Pregnancy',
                          description: 'Tdap, influenza, and COVID-19 vaccines — safety and timing during pregnancy.',
                          icon: Icons.vaccines,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── High-Risk Pregnancy ──
                    _SubSection(
                      title: 'High-Risk Pregnancy',
                      modules: [
                        _ModuleInfo(
                          title: 'Gestational Diabetes (GDM)',
                          description: 'Diabetes developing during pregnancy — screening, diet, insulin, and monitoring.',
                          icon: Icons.monitor_heart,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Pre-eclampsia & Eclampsia',
                          description: 'High blood pressure in pregnancy — warning signs, risks, and management.',
                          icon: Icons.warning_rounded,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Gestational Hypertension',
                          description: 'Pregnancy-induced high blood pressure — monitoring and treatment.',
                          icon: Icons.speed,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Placenta Praevia',
                          description: 'Low-lying placenta — types, risks of bleeding, and delivery planning.',
                          icon: Icons.emergency,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Placental Abruption',
                          description: 'Premature separation of the placenta — emergency signs and management.',
                          icon: Icons.emergency,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Intrauterine Growth Restriction (IUGR)',
                          description: 'When the baby is smaller than expected — causes, monitoring, and delivery timing.',
                          icon: Icons.child_care,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Rh Incompatibility',
                          description: 'Rh-negative mother with Rh-positive baby — Anti-D injection and management.',
                          icon: Icons.bloodtype,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Multiple Pregnancy (Twins/Triplets)',
                          description: 'Risks, monitoring, and delivery considerations for multiple gestations.',
                          icon: Icons.group,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Thyroid Disorders in Pregnancy',
                          description: 'Hypothyroidism and hyperthyroidism during pregnancy — effects and management.',
                          icon: Icons.accessibility_new,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Common Pregnancy Symptoms ──
                    _SubSection(
                      title: 'Common Pregnancy Symptoms',
                      modules: [
                        _ModuleInfo(
                          title: 'Back Pain in Pregnancy',
                          description: 'Causes and relief measures for pregnancy-related back pain.',
                          icon: Icons.accessibility,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Heartburn & Reflux',
                          description: 'Acid reflux during pregnancy — dietary tips and safe medications.',
                          icon: Icons.local_fire_department,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Constipation in Pregnancy',
                          description: 'Hormonal causes and safe remedies for constipation during pregnancy.',
                          icon: Icons.healing,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Swelling & Oedema',
                          description: 'Normal vs concerning swelling in pregnancy — when to worry.',
                          icon: Icons.water_drop,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Varicose Veins & Haemorrhoids',
                          description: 'Common vascular changes in pregnancy — prevention and management.',
                          icon: Icons.healing,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Leg Cramps & Restless Legs',
                          description: 'Night-time cramps during pregnancy — causes and relief.',
                          icon: Icons.directions_walk,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Labour & Delivery ──
                    _SubSection(
                      title: 'Labour & Delivery',
                      modules: [
                        _ModuleInfo(
                          title: 'Signs of Labour',
                          description: 'How to recognise true labour — contractions, water breaking, and when to go to hospital.',
                          icon: Icons.timer,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Stages of Labour',
                          description: 'First, second, and third stages of labour — what happens at each stage.',
                          icon: Icons.timeline,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Pain Relief in Labour',
                          description: 'Epidural, Entonox, pethidine, and non-pharmacological pain relief options.',
                          icon: Icons.medication,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Normal (Vaginal) Delivery',
                          description: 'What to expect during a normal vaginal birth — preparation and process.',
                          icon: Icons.child_friendly,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Caesarean Section (C-Section)',
                          description: 'Planned and emergency C-section — indications, procedure, and recovery.',
                          icon: Icons.local_hospital,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Assisted Delivery (Forceps/Vacuum)',
                          description: 'Instrumental delivery — when and why it may be needed.',
                          icon: Icons.medical_services,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Induction of Labour',
                          description: 'Why and how labour is induced — methods, risks, and what to expect.',
                          icon: Icons.play_arrow,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Preterm Labour',
                          description: 'Labour before 37 weeks — warning signs, management, and neonatal care.',
                          icon: Icons.warning_amber,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Breech Presentation',
                          description: 'Baby in breech position — external cephalic version (ECV) and delivery options.',
                          icon: Icons.swap_vert,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Postpartum Care ──
                    _SubSection(
                      title: 'Postpartum Care',
                      modules: [
                        _ModuleInfo(
                          title: 'Postnatal Recovery',
                          description: 'Physical recovery after birth — healing, rest, and when to resume activities.',
                          icon: Icons.hotel,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Breastfeeding',
                          description: 'Initiating and maintaining breastfeeding — latching, positions, and common issues.',
                          icon: Icons.child_care,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Postpartum Haemorrhage (PPH)',
                          description: 'Excessive bleeding after delivery — causes, prevention, and emergency management.',
                          icon: Icons.emergency,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Postpartum Depression & Anxiety',
                          description: 'Mood disorders after childbirth — symptoms, screening, and getting help.',
                          icon: Icons.psychology,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Postpartum Infections',
                          description: 'Wound infections, endometritis, and mastitis — signs and treatment.',
                          icon: Icons.coronavirus,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Contraception After Delivery',
                          description: 'When fertility returns and contraceptive options while breastfeeding.',
                          icon: Icons.shield,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Postnatal Exercises',
                          description: 'Safe exercises after delivery — pelvic floor, core strengthening, and gradual return to fitness.',
                          icon: Icons.fitness_center,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Newborn Care ──
                    _SubSection(
                      title: 'Newborn Care',
                      modules: [
                        _ModuleInfo(
                          title: 'Newborn Screening Tests',
                          description: 'Heel prick test, hearing screening, and other essential newborn checks.',
                          icon: Icons.biotech,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Newborn Feeding',
                          description: 'Breastfeeding vs formula — feeding schedules, hunger cues, and growth monitoring.',
                          icon: Icons.restaurant,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Jaundice in Newborns',
                          description: 'Neonatal jaundice — causes, phototherapy, and when to be concerned.',
                          icon: Icons.sunny,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Immunisation Schedule',
                          description: 'Vaccination schedule for newborns and infants — essential vaccines and timing.',
                          icon: Icons.vaccines,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Umbilical Cord Care',
                          description: 'How to care for the umbilical stump — hygiene and signs of infection.',
                          icon: Icons.healing,
                          route: '/coming-soon',
                        ),
                      ],
                    ),
                    // ── Pregnancy Complications ──
                    _SubSection(
                      title: 'Pregnancy Complications',
                      modules: [
                        _ModuleInfo(
                          title: 'Oligohydramnios (Low Amniotic Fluid)',
                          description: 'Low amniotic fluid levels — causes, monitoring, and delivery planning.',
                          icon: Icons.water_drop,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Polyhydramnios (Excess Amniotic Fluid)',
                          description: 'Excessive amniotic fluid — causes, risks, and management.',
                          icon: Icons.water,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Premature Rupture of Membranes (PROM)',
                          description: 'Water breaking before labour begins — management and risks of infection.',
                          icon: Icons.warning_amber,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Cord Prolapse',
                          description: 'Umbilical cord presenting before the baby — emergency management.',
                          icon: Icons.emergency,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Cholestasis of Pregnancy',
                          description: 'Intrahepatic cholestasis — itching, bile acid levels, and risks to baby.',
                          icon: Icons.medical_information,
                          route: '/coming-soon',
                        ),
                        _ModuleInfo(
                          title: 'Anaemia in Pregnancy',
                          description: 'Iron-deficiency anaemia during pregnancy — prevention, diagnosis, and treatment.',
                          icon: Icons.bloodtype,
                          route: '/coming-soon',
                        ),
                      ],
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

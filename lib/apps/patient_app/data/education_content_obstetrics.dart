import 'education_content.dart';

Map<String, EducationTopicData> getObstetricsContent() {
  return {
    // ── Early Pregnancy ───────────────────────────────────────────────────

    'confirming-pregnancy': const EducationTopicData(
      titleEn: 'Confirming Pregnancy',
      sectionsEn: [
        {
          'title': 'Home Pregnancy Tests',
          'body':
              'Home pregnancy tests detect the hormone human chorionic gonadotrophin (hCG) in your urine. For the most accurate result, take the test on the first day of your missed period or later, using your first morning urine when hCG is most concentrated.',
        },
        {
          'title': 'Understanding hCG Levels',
          'body':
              'hCG is produced by the placenta shortly after the embryo implants in the uterus, and its levels roughly double every 48 to 72 hours in early pregnancy. Your doctor may order blood tests to measure hCG precisely, which can help confirm a viable pregnancy and estimate its age.',
        },
        {
          'title': 'When to See a Doctor',
          'body':
              'Once you have a positive home test, schedule an appointment with your doctor to confirm the pregnancy and begin antenatal care. Early medical review is important to check your health, start folic acid supplementation, and plan necessary investigations.',
        },
        {
          'title': 'Early Ultrasound',
          'body':
              'An early ultrasound, usually performed transvaginally between six and eight weeks, confirms that the pregnancy is located inside the uterus and checks for a heartbeat. This scan also helps establish an accurate due date and determine whether you are carrying one baby or more.',
        },
        {
          'title': 'False Positives & Negatives',
          'body':
              'False-negative results can occur if you test too early, before hCG levels are high enough to detect. False positives are rare but may happen with certain medications or after a recent pregnancy loss; if in doubt, a blood test or ultrasound can provide a definitive answer.',
        },
        {
          'title': 'Emotional Well-being',
          'body':
              'Finding out you are pregnant can bring a mix of emotions, including joy, anxiety, or uncertainty, and all of these feelings are completely normal. Speak with your partner, a trusted friend, or your healthcare team if you need support during this early stage.',
        },
      ],
      sectionsKn: [],
    ),

    'first-trimester-screening': const EducationTopicData(
      titleEn: 'First Trimester Screening',
      sectionsEn: [
        {
          'title': 'What Is First Trimester Screening?',
          'body':
              'First trimester screening is a combination of tests performed between 11 and 13 weeks of pregnancy to assess the risk of certain chromosomal conditions such as Down syndrome. It involves a special ultrasound measurement and a blood test, and is a screening — not a diagnostic — test.',
        },
        {
          'title': 'Nuchal Translucency (NT) Scan',
          'body':
              'The NT scan measures the fluid-filled space at the back of the baby\'s neck using ultrasound. An increased NT measurement may indicate a higher risk of chromosomal abnormalities or heart defects, and further testing may be recommended.',
        },
        {
          'title': 'Double Marker Test',
          'body':
              'This blood test measures two substances — free beta-hCG and pregnancy-associated plasma protein-A (PAPP-A) — in the mother\'s blood. Abnormal levels of these markers, combined with the NT measurement and maternal age, help calculate the overall risk for conditions such as trisomy 21, 18, and 13.',
        },
        {
          'title': 'Understanding Your Results',
          'body':
              'Results are reported as a risk ratio, for example one in 500, rather than a definite yes or no. A high-risk result does not mean your baby has a condition; it means further diagnostic testing such as chorionic villus sampling (CVS) or amniocentesis may be offered.',
        },
        {
          'title': 'Non-Invasive Prenatal Testing (NIPT)',
          'body':
              'NIPT is an advanced blood test that analyses fragments of the baby\'s DNA circulating in the mother\'s blood and can be done from 10 weeks onwards. It has a very high detection rate for common trisomies but is still a screening test, and a positive result should be confirmed with a diagnostic procedure.',
        },
        {
          'title': 'Making Informed Decisions',
          'body':
              'First trimester screening is entirely optional and should be a personal choice made with proper counselling. Your doctor or genetic counsellor can help you understand what the results mean, discuss your options, and support you regardless of the outcome.',
        },
      ],
      sectionsKn: [],
    ),

    'morning-sickness': const EducationTopicData(
      titleEn: 'Morning Sickness (Nausea & Vomiting)',
      sectionsEn: [
        {
          'title': 'What Is Morning Sickness?',
          'body':
              'Morning sickness refers to the nausea and vomiting that many women experience during early pregnancy, despite its name it can occur at any time of day. It typically begins around six weeks of gestation and usually improves by 12 to 14 weeks, though some women experience it for longer.',
        },
        {
          'title': 'What Causes It?',
          'body':
              'The exact cause is not fully understood, but rising levels of hCG and oestrogen in early pregnancy are believed to play a major role. Hormonal changes affect the gastrointestinal tract and the brain\'s vomiting centre, making pregnant women more sensitive to certain smells and tastes.',
        },
        {
          'title': 'Dietary Tips',
          'body':
              'Eating small, frequent meals throughout the day rather than three large ones can help keep nausea at bay. Bland, dry foods such as crackers or toast are often well-tolerated, and it helps to avoid spicy, greasy, or strong-smelling foods.',
        },
        {
          'title': 'Home Remedies',
          'body':
              'Ginger — in the form of ginger tea, biscuits, or supplements — has been shown to reduce nausea in pregnancy. Staying well-hydrated with small sips of water, lemon water, or ice lollies can also help, especially if vomiting is frequent.',
        },
        {
          'title': 'Medical Treatment',
          'body':
              'If dietary measures are not enough, your doctor may prescribe anti-nausea medications that are safe in pregnancy, such as doxylamine combined with pyridoxine (vitamin B6). It is important not to self-medicate and to consult your healthcare provider before taking any medicine.',
        },
        {
          'title': 'When to Seek Help',
          'body':
              'Contact your doctor if you are unable to keep any food or liquids down, if you are losing weight, or if you notice dark-coloured urine suggesting dehydration. Severe, persistent vomiting may be a sign of hyperemesis gravidarum, which requires medical treatment.',
        },
      ],
      sectionsKn: [],
    ),

    'hyperemesis-gravidarum': const EducationTopicData(
      titleEn: 'Hyperemesis Gravidarum',
      sectionsEn: [
        {
          'title': 'What Is Hyperemesis Gravidarum?',
          'body':
              'Hyperemesis gravidarum (HG) is a severe form of pregnancy sickness characterised by persistent, excessive nausea and vomiting that leads to dehydration and weight loss. Unlike ordinary morning sickness, HG can significantly affect a woman\'s ability to eat, drink, and carry out daily activities.',
        },
        {
          'title': 'Causes & Risk Factors',
          'body':
              'The exact cause is unclear, but it is associated with rapidly rising hCG levels, and women carrying multiple pregnancies or molar pregnancies are at higher risk. A personal or family history of HG, a history of motion sickness, and migraine also increase susceptibility.',
        },
        {
          'title': 'Symptoms & Diagnosis',
          'body':
              'Symptoms include vomiting many times a day, inability to keep food or fluids down, significant weight loss (more than five per cent of pre-pregnancy weight), and signs of dehydration such as dizziness and reduced urination. Diagnosis is based on clinical symptoms and may be supported by urine tests showing ketones and blood tests checking electrolytes.',
        },
        {
          'title': 'Treatment',
          'body':
              'Treatment often requires hospital admission for intravenous fluids and electrolyte replacement to correct dehydration. Anti-emetic medications such as ondansetron, metoclopramide, or cyclizine may be prescribed, along with thiamine (vitamin B1) to prevent a rare but serious deficiency.',
        },
        {
          'title': 'Nutritional Support',
          'body':
              'Once vomiting is controlled, a gradual reintroduction of small, bland meals is recommended. In very severe cases where oral intake remains impossible, nutrition may need to be provided through a nasogastric tube or intravenously to protect both the mother and baby.',
        },
        {
          'title': 'Emotional Impact',
          'body':
              'HG can be emotionally devastating, leading to feelings of isolation, depression, and anxiety. It is important to seek psychological support and to know that HG is a recognised medical condition — not a sign of weakness or an inability to cope with pregnancy.',
        },
        {
          'title': 'Outlook',
          'body':
              'For most women, symptoms gradually improve by 16 to 20 weeks, though a small number experience nausea throughout pregnancy. With appropriate medical treatment, most women with HG go on to have healthy pregnancies and babies.',
        },
      ],
      sectionsKn: [],
    ),

    'miscarriage': const EducationTopicData(
      titleEn: 'Miscarriage (Early Pregnancy Loss)',
      sectionsEn: [
        {
          'title': 'What Is a Miscarriage?',
          'body':
              'A miscarriage is the spontaneous loss of a pregnancy before 20 weeks of gestation, with most occurring in the first 12 weeks. It is very common, affecting roughly one in five known pregnancies, and in most cases is not caused by anything the mother did or did not do.',
        },
        {
          'title': 'Types of Miscarriage',
          'body':
              'There are several types, including threatened miscarriage (bleeding but the pregnancy continues), inevitable miscarriage (the cervix opens and loss cannot be prevented), incomplete miscarriage (some tissue remains), and missed miscarriage (the baby has stopped developing but has not been passed). Each type may require different management.',
        },
        {
          'title': 'Causes',
          'body':
              'The most common cause is a chromosomal abnormality in the embryo that prevents normal development. Other factors may include hormonal problems, uterine abnormalities, blood clotting disorders, uncontrolled diabetes, thyroid disease, and certain infections.',
        },
        {
          'title': 'Symptoms',
          'body':
              'The most common symptoms are vaginal bleeding — ranging from light spotting to heavy flow — and cramping or pain in the lower abdomen or back. However, some miscarriages, known as missed miscarriages, have no symptoms and are only discovered on ultrasound.',
        },
        {
          'title': 'Management Options',
          'body':
              'Management depends on the type and may include expectant management (waiting for the tissue to pass naturally), medical treatment with medication to help the uterus empty, or a minor surgical procedure called evacuation of retained products. Your doctor will discuss the most appropriate option for your situation.',
        },
        {
          'title': 'Emotional Support & Recovery',
          'body':
              'A miscarriage can be a deeply distressing experience, and grief is a completely natural response regardless of how early the loss occurs. Professional counselling, support groups, and open conversations with loved ones can be invaluable during recovery.',
        },
        {
          'title': 'Future Pregnancies',
          'body':
              'Having one miscarriage does not significantly increase the risk of another, and most women go on to have successful pregnancies. If you experience three or more consecutive miscarriages (recurrent miscarriage), your doctor may recommend investigations to look for an underlying cause.',
        },
      ],
      sectionsKn: [],
    ),

    'ectopic-pregnancy-obs': const EducationTopicData(
      titleEn: 'Ectopic Pregnancy',
      sectionsEn: [
        {
          'title': 'What Is an Ectopic Pregnancy?',
          'body':
              'An ectopic pregnancy occurs when a fertilised egg implants and begins to grow outside the uterus, most commonly in a fallopian tube. It cannot develop into a viable pregnancy and, if untreated, can be life-threatening due to the risk of rupture and internal bleeding.',
        },
        {
          'title': 'Risk Factors',
          'body':
              'Risk factors include a history of pelvic inflammatory disease, previous ectopic pregnancy, tubal surgery, endometriosis, and the use of an intrauterine device (IUD) at the time of conception. Smoking and fertility treatments such as IVF also increase the risk.',
        },
        {
          'title': 'Symptoms',
          'body':
              'Early symptoms may include one-sided lower abdominal pain, vaginal bleeding or spotting, and shoulder-tip pain if there is internal bleeding irritating the diaphragm. Some women may feel dizzy or faint, which can indicate a ruptured ectopic requiring emergency care.',
        },
        {
          'title': 'Diagnosis',
          'body':
              'Diagnosis is made through a combination of serial blood hCG measurements and transvaginal ultrasound. In an ectopic pregnancy, hCG levels often rise more slowly than expected, and no pregnancy sac is visible inside the uterus on ultrasound.',
        },
        {
          'title': 'Treatment',
          'body':
              'Treatment depends on the size and location of the ectopic pregnancy and may include medication (methotrexate injection to stop the pregnancy from growing) or surgery (usually laparoscopic) to remove the ectopic tissue. In an emergency with a ruptured tube, immediate surgery is necessary.',
        },
        {
          'title': 'Emotional Recovery',
          'body':
              'Losing a pregnancy in this way can be emotionally very difficult, and it is important to allow yourself time to grieve. Counselling and support groups can help, and your healthcare team should provide follow-up care for both physical and emotional recovery.',
        },
        {
          'title': 'Future Fertility',
          'body':
              'Many women who have had an ectopic pregnancy go on to have successful pregnancies in the future, although the risk of another ectopic is slightly increased. Early monitoring with ultrasound in subsequent pregnancies is usually recommended to confirm the pregnancy is in the correct location.',
        },
      ],
      sectionsKn: [],
    ),

    'molar-pregnancy': const EducationTopicData(
      titleEn: 'Molar Pregnancy',
      sectionsEn: [
        {
          'title': 'What Is a Molar Pregnancy?',
          'body':
              'A molar pregnancy, also known as gestational trophoblastic disease, is an abnormal form of pregnancy in which the tissue that would normally develop into the placenta grows abnormally. There are two types: a complete mole, where there is no normal foetal tissue, and a partial mole, where some abnormal foetal tissue may be present.',
        },
        {
          'title': 'Causes',
          'body':
              'A complete mole occurs when one or two sperm fertilise an egg that has lost its genetic material, resulting in only paternal chromosomes. A partial mole occurs when two sperm fertilise a normal egg, giving the embryo an extra set of chromosomes, which prevents normal development.',
        },
        {
          'title': 'Symptoms',
          'body':
              'Symptoms may include vaginal bleeding in the first trimester, a uterus that is larger than expected for the gestational age, severe nausea and vomiting, and abnormally high hCG levels. Some women may also develop early signs of pre-eclampsia or an overactive thyroid.',
        },
        {
          'title': 'Diagnosis & Treatment',
          'body':
              'Diagnosis is usually made by ultrasound, which may show a characteristic "snowstorm" appearance in a complete mole, supported by very high hCG levels. Treatment involves surgical evacuation of the uterus (suction curettage) to remove the molar tissue completely.',
        },
        {
          'title': 'Follow-Up Monitoring',
          'body':
              'After treatment, regular blood and urine tests are performed to monitor hCG levels until they return to normal, which may take several months. This follow-up is essential because a small percentage of molar pregnancies can develop into a persistent or malignant form requiring further treatment.',
        },
        {
          'title': 'Gestational Trophoblastic Neoplasia (GTN)',
          'body':
              'In a small number of cases, molar tissue can persist or become cancerous, a condition known as GTN. The good news is that GTN responds very well to chemotherapy, with cure rates exceeding 95 per cent even in advanced cases.',
        },
        {
          'title': 'Future Pregnancies',
          'body':
              'Women are advised to wait until their hCG monitoring is complete before trying to conceive again, which is usually six to twelve months depending on the type of mole. The risk of a molar pregnancy recurring in a future pregnancy is low, approximately one to two per cent.',
        },
      ],
      sectionsKn: [],
    ),

    // ── Antenatal Care ────────────────────────────────────────────────────

    'routine-antenatal-visits': const EducationTopicData(
      titleEn: 'Routine Antenatal Visits',
      sectionsEn: [
        {
          'title': 'Why Are Antenatal Visits Important?',
          'body':
              'Regular antenatal visits allow your healthcare team to monitor the health of both you and your baby throughout pregnancy. They help detect potential complications early, provide an opportunity to ask questions, and ensure you receive the right care at the right time.',
        },
        {
          'title': 'First Visit (Booking Visit)',
          'body':
              'Your first visit, ideally before 12 weeks, involves a detailed medical and obstetric history, a physical examination, and baseline blood tests. Your doctor will calculate your expected due date, discuss screening tests, and create a personalised care plan.',
        },
        {
          'title': 'Visit Schedule',
          'body':
              'For an uncomplicated first pregnancy, visits are typically monthly until 28 weeks, fortnightly until 36 weeks, and then weekly until delivery. Women with high-risk conditions may need more frequent monitoring as determined by their obstetrician.',
        },
        {
          'title': 'What Happens at Each Visit?',
          'body':
              'At each visit, your blood pressure, weight, and urine are checked, and your doctor measures the height of your uterus (fundal height) to assess the baby\'s growth. The baby\'s heartbeat is listened to, and any symptoms or concerns you have are discussed.',
        },
        {
          'title': 'Third Trimester Assessments',
          'body':
              'In the final weeks, your doctor will check the baby\'s position (head-down or breech), assess amniotic fluid levels, and look for signs of conditions such as pre-eclampsia. Plans for delivery, including the mode of birth and pain relief options, are discussed during these visits.',
        },
        {
          'title': 'When to Contact Your Doctor Between Visits',
          'body':
              'You should contact your healthcare provider immediately if you experience vaginal bleeding, severe headache, visual disturbances, sudden swelling, reduced or absent foetal movements, or fluid leaking from the vagina. These symptoms may indicate a complication that needs urgent assessment.',
        },
      ],
      sectionsKn: [],
    ),

    'antenatal-blood-tests': const EducationTopicData(
      titleEn: 'Antenatal Blood Tests',
      sectionsEn: [
        {
          'title': 'Why Are Blood Tests Done?',
          'body':
              'Antenatal blood tests help identify conditions that could affect your pregnancy or your baby\'s health, often before symptoms develop. Early detection allows timely treatment and better outcomes for both mother and baby.',
        },
        {
          'title': 'Blood Group & Rh Factor',
          'body':
              'Your blood group (A, B, AB, or O) and Rh status (positive or negative) are determined early in pregnancy. If you are Rh-negative and your baby is Rh-positive, you may need Anti-D immunoglobulin injections to prevent your immune system from producing antibodies that could harm the baby.',
        },
        {
          'title': 'Haemoglobin & Anaemia',
          'body':
              'Your haemoglobin level is checked to screen for anaemia, which is common in pregnancy due to increased blood volume and the baby\'s demands for iron. If anaemia is found, iron supplements and dietary changes are recommended to ensure adequate oxygen supply to you and your baby.',
        },
        {
          'title': 'Infection Screening',
          'body':
              'Blood tests screen for infections such as HIV, hepatitis B, syphilis, and rubella immunity, as these can be transmitted to the baby during pregnancy or birth. Early detection allows appropriate treatment or precautions to protect your baby.',
        },
        {
          'title': 'Blood Sugar Screening',
          'body':
              'A glucose challenge test or oral glucose tolerance test (OGTT) is usually performed between 24 and 28 weeks to screen for gestational diabetes. Women with risk factors such as a family history of diabetes, obesity, or a previous large baby may be tested earlier.',
        },
        {
          'title': 'Thyroid Function',
          'body':
              'Thyroid hormone levels may be checked, especially if you have symptoms or risk factors for thyroid disease. Both hypothyroidism and hyperthyroidism can affect pregnancy outcomes and foetal development if left untreated.',
        },
        {
          'title': 'Other Tests',
          'body':
              'Additional blood tests may include screening for thalassaemia and sickle cell disease, checking platelet count and clotting function, and assessing kidney and liver function. Your doctor will explain which tests are relevant for your individual circumstances.',
        },
      ],
      sectionsKn: [],
    ),

    'ultrasound-pregnancy': const EducationTopicData(
      titleEn: 'Ultrasound Scans in Pregnancy',
      sectionsEn: [
        {
          'title': 'How Ultrasound Works',
          'body':
              'Ultrasound uses high-frequency sound waves to create images of your baby and reproductive organs on a screen. It is a safe, painless procedure with no known risks to the mother or baby, and is one of the most valuable tools in antenatal care.',
        },
        {
          'title': 'Dating Scan (6–10 Weeks)',
          'body':
              'The dating scan, often performed transvaginally in very early pregnancy, confirms the pregnancy is inside the uterus, checks for a heartbeat, and establishes an accurate due date. It is especially useful when the date of the last menstrual period is uncertain.',
        },
        {
          'title': 'NT Scan (11–13 Weeks)',
          'body':
              'This scan measures the nuchal translucency — the fluid at the back of the baby\'s neck — as part of first trimester screening for chromosomal abnormalities. It also checks for major structural abnormalities and confirms the number of babies.',
        },
        {
          'title': 'Anomaly Scan (18–22 Weeks)',
          'body':
              'The anomaly scan, also called the mid-pregnancy scan, is a detailed examination of the baby\'s anatomy including the brain, heart, spine, kidneys, limbs, and face. It also checks the position of the placenta and the amount of amniotic fluid.',
        },
        {
          'title': 'Growth Scans (Third Trimester)',
          'body':
              'Growth scans may be recommended in the third trimester to monitor the baby\'s weight and growth, especially in high-risk pregnancies. These scans also assess blood flow through the umbilical cord (Doppler studies) and amniotic fluid volume.',
        },
        {
          'title': 'Preparing for a Scan',
          'body':
              'For abdominal scans in early pregnancy, you may be asked to drink water and have a full bladder to improve image quality. Wear comfortable, loose-fitting clothing, and do not hesitate to ask the sonographer questions about what you see on the screen.',
        },
      ],
      sectionsKn: [],
    ),

    'nutrition-pregnancy': const EducationTopicData(
      titleEn: 'Nutrition During Pregnancy',
      sectionsEn: [
        {
          'title': 'Why Nutrition Matters',
          'body':
              'Good nutrition during pregnancy supports your baby\'s growth and development while maintaining your own health and energy levels. A balanced diet provides the essential building blocks for your baby\'s brain, bones, organs, and immune system.',
        },
        {
          'title': 'Essential Nutrients',
          'body':
              'Key nutrients include folic acid (to prevent neural tube defects), iron (to support increased blood volume), calcium (for bone development), omega-3 fatty acids (for brain development), and vitamin D (for calcium absorption). Your doctor may recommend supplements to ensure adequate intake.',
        },
        {
          'title': 'Balanced Diet',
          'body':
              'Aim for a varied diet including whole grains, fruits, vegetables, lean proteins, dairy products, and healthy fats. During pregnancy, you need approximately 300 extra calories per day in the second and third trimesters — the equivalent of a nutritious snack.',
        },
        {
          'title': 'Foods to Avoid',
          'body':
              'Avoid raw or undercooked meat, fish, and eggs due to the risk of infection with salmonella, toxoplasmosis, or listeria. Unpasteurised dairy products, certain soft cheeses, raw sprouts, and high-mercury fish (such as shark and swordfish) should also be avoided.',
        },
        {
          'title': 'Hydration',
          'body':
              'Drinking eight to ten glasses of water daily helps maintain amniotic fluid levels, supports increased blood volume, and prevents constipation and urinary tract infections. Limit caffeinated beverages to no more than 200 milligrams of caffeine per day, roughly equivalent to one or two cups of coffee.',
        },
        {
          'title': 'Managing Common Dietary Challenges',
          'body':
              'If nausea makes eating difficult, try small, frequent meals of bland foods and take prenatal vitamins with food or at bedtime. Vegetarian and vegan mothers should pay special attention to getting enough iron, vitamin B12, calcium, and protein through careful food choices and supplements.',
        },
        {
          'title': 'Weight Gain Guidance',
          'body':
              'Healthy weight gain during pregnancy depends on your pre-pregnancy body mass index (BMI) and typically ranges from 11 to 16 kilograms for women of normal weight. Your doctor will monitor your weight at each visit and provide personalised guidance to ensure healthy gain for you and your baby.',
        },
      ],
      sectionsKn: [],
    ),

    'exercise-pregnancy': const EducationTopicData(
      titleEn: 'Exercise During Pregnancy',
      sectionsEn: [
        {
          'title': 'Benefits of Exercise',
          'body':
              'Regular exercise during pregnancy can reduce the risk of gestational diabetes, pre-eclampsia, excessive weight gain, and caesarean delivery. It also helps improve mood, sleep quality, energy levels, and prepares your body for the physical demands of labour.',
        },
        {
          'title': 'Safe Activities',
          'body':
              'Walking, swimming, stationary cycling, prenatal yoga, and low-impact aerobics are generally safe for most pregnant women. Aim for at least 150 minutes of moderate-intensity exercise per week, spread across several days.',
        },
        {
          'title': 'Activities to Avoid',
          'body':
              'Avoid contact sports, activities with a high risk of falling (such as horse riding or skiing), scuba diving, and exercises that involve lying flat on your back after the first trimester. Hot yoga and exercising in very hot or humid conditions should also be avoided due to the risk of overheating.',
        },
        {
          'title': 'Pelvic Floor Exercises',
          'body':
              'Pelvic floor exercises (Kegel exercises) strengthen the muscles that support the bladder, uterus, and bowel, helping to prevent incontinence during and after pregnancy. Practise by squeezing and holding the pelvic floor muscles for up to ten seconds, repeating ten times, three times a day.',
        },
        {
          'title': 'Warning Signs to Stop',
          'body':
              'Stop exercising and contact your doctor if you experience vaginal bleeding, dizziness, chest pain, shortness of breath before starting exercise, headache, muscle weakness, calf pain or swelling, or regular painful contractions. Fluid leaking from the vagina is also a reason to stop immediately.',
        },
        {
          'title': 'Special Considerations',
          'body':
              'Women with certain conditions such as placenta praevia, cervical insufficiency, pre-eclampsia, or preterm labour risk may be advised to limit or avoid exercise. Always discuss your exercise plans with your healthcare provider, especially if you have any pregnancy complications.',
        },
      ],
      sectionsKn: [],
    ),

    'vaccinations-pregnancy': const EducationTopicData(
      titleEn: 'Vaccinations in Pregnancy',
      sectionsEn: [
        {
          'title': 'Why Vaccinate During Pregnancy?',
          'body':
              'Certain vaccines given during pregnancy protect both the mother and the baby by passing antibodies through the placenta. This gives the newborn passive immunity against serious infections during the first few months of life when they are too young to be vaccinated themselves.',
        },
        {
          'title': 'Tdap Vaccine (Tetanus, Diphtheria, Pertussis)',
          'body':
              'The Tdap vaccine is recommended during each pregnancy, ideally between 27 and 36 weeks, to protect the newborn against whooping cough (pertussis). Whooping cough can be life-threatening in young babies, and maternal vaccination has been shown to prevent the majority of cases in infants under three months.',
        },
        {
          'title': 'Influenza Vaccine',
          'body':
              'The inactivated influenza vaccine is recommended for all pregnant women during flu season, regardless of the trimester. Pregnant women are at higher risk of severe influenza complications, and the vaccine protects both the mother and provides passive immunity to the newborn.',
        },
        {
          'title': 'COVID-19 Vaccine',
          'body':
              'COVID-19 vaccination is recommended during pregnancy as the virus can cause more severe illness in pregnant women and increase the risk of preterm birth. Current evidence supports the safety and effectiveness of mRNA COVID-19 vaccines during pregnancy.',
        },
        {
          'title': 'Vaccines to Avoid',
          'body':
              'Live vaccines — such as measles, mumps, rubella (MMR), varicella (chickenpox), and BCG — should not be given during pregnancy because of a theoretical risk to the developing baby. If you need these vaccines, they should be given at least four weeks before conception or after delivery.',
        },
        {
          'title': 'Discussing Vaccination with Your Doctor',
          'body':
              'Talk to your healthcare provider about which vaccines are recommended for you based on your medical history, travel plans, and local disease patterns. Keeping your vaccination records updated and informing your doctor about any allergies ensures safe and effective immunisation during pregnancy.',
        },
      ],
      sectionsKn: [],
    ),

    // ── High-Risk Pregnancy ──────────────────────────────────────────────

    'gestational-diabetes': const EducationTopicData(
      titleEn: 'Gestational Diabetes (GDM)',
      sectionsEn: [
        {
          'title': 'What Is Gestational Diabetes?',
          'body':
              'Gestational diabetes mellitus (GDM) is a type of diabetes that develops during pregnancy, usually in the second or third trimester, in women who did not have diabetes before. It occurs when the body cannot produce enough insulin to meet the extra demands of pregnancy, leading to high blood sugar levels.',
        },
        {
          'title': 'Screening & Diagnosis',
          'body':
              'GDM is usually diagnosed with an oral glucose tolerance test (OGTT) performed between 24 and 28 weeks of pregnancy. You will be asked to fast overnight, then drink a glucose solution, and have blood samples taken at specific intervals to measure how your body processes sugar.',
        },
        {
          'title': 'Risk Factors',
          'body':
              'Risk factors include a BMI over 30, a family history of type 2 diabetes, a previous pregnancy with GDM, a previous baby weighing more than 4.5 kilograms, and belonging to certain ethnic groups with higher diabetes prevalence. Women with polycystic ovary syndrome are also at increased risk.',
        },
        {
          'title': 'Dietary Management',
          'body':
              'The cornerstone of GDM management is a balanced diet with controlled carbohydrate intake, spreading meals and snacks evenly throughout the day. A dietitian can help create a meal plan that maintains stable blood sugar levels while ensuring adequate nutrition for you and your baby.',
        },
        {
          'title': 'Blood Sugar Monitoring & Medication',
          'body':
              'You will be taught to monitor your blood sugar levels at home using a glucometer, typically checking fasting and post-meal levels. If diet and exercise alone do not control blood sugar adequately, your doctor may prescribe insulin injections or, in some cases, oral medications such as metformin.',
        },
        {
          'title': 'Effects on the Baby',
          'body':
              'Poorly controlled GDM can lead to excessive foetal growth (macrosomia), which increases the risk of birth injuries and caesarean delivery. The baby may also be at risk of low blood sugar (neonatal hypoglycaemia), jaundice, and breathing difficulties after birth.',
        },
        {
          'title': 'After Delivery',
          'body':
              'In most cases, blood sugar levels return to normal after delivery, but you will need a follow-up glucose test six to twelve weeks postpartum. Women who have had GDM have a significantly increased risk of developing type 2 diabetes later in life and should maintain a healthy lifestyle with annual screening.',
        },
      ],
      sectionsKn: [],
    ),

    'pre-eclampsia': const EducationTopicData(
      titleEn: 'Pre-eclampsia & Eclampsia',
      sectionsEn: [
        {
          'title': 'What Is Pre-eclampsia?',
          'body':
              'Pre-eclampsia is a serious pregnancy complication characterised by high blood pressure and protein in the urine, typically developing after 20 weeks of gestation. It affects the blood vessels and can impair the function of vital organs including the liver, kidneys, and brain.',
        },
        {
          'title': 'Risk Factors',
          'body':
              'Risk factors include a first pregnancy, a history of pre-eclampsia, chronic hypertension, kidney disease, diabetes, obesity, maternal age over 35, and a family history of the condition. Multiple pregnancies and pregnancies conceived through IVF also carry a higher risk.',
        },
        {
          'title': 'Warning Signs',
          'body':
              'Symptoms may include persistent headaches, visual disturbances (such as blurred vision or flashing lights), upper abdominal pain (especially under the ribs on the right side), sudden swelling of the face or hands, and nausea or vomiting. However, pre-eclampsia can also be present without obvious symptoms, which is why regular antenatal checks are so important.',
        },
        {
          'title': 'Complications',
          'body':
              'If untreated, pre-eclampsia can progress to eclampsia (seizures), HELLP syndrome (haemolysis, elevated liver enzymes, low platelets), placental abruption, stroke, or organ failure. It can also restrict the baby\'s growth due to reduced blood flow through the placenta.',
        },
        {
          'title': 'Management',
          'body':
              'Management depends on the severity and gestational age and may include blood pressure medications, magnesium sulphate to prevent seizures, and close monitoring with blood tests and foetal assessment. The only definitive cure for pre-eclampsia is delivery of the baby and placenta.',
        },
        {
          'title': 'Prevention',
          'body':
              'Women at high risk may be advised to take low-dose aspirin from 12 weeks of pregnancy to reduce their risk. Adequate calcium intake, regular exercise, and maintaining a healthy weight before pregnancy may also help lower the risk.',
        },
        {
          'title': 'Postnatal Monitoring',
          'body':
              'Blood pressure usually normalises within a few weeks of delivery, but some women may need ongoing medication and monitoring. Women who have had pre-eclampsia have an increased long-term risk of cardiovascular disease and should have regular health checks throughout their lives.',
        },
      ],
      sectionsKn: [],
    ),

    'gestational-hypertension': const EducationTopicData(
      titleEn: 'Gestational Hypertension',
      sectionsEn: [
        {
          'title': 'What Is Gestational Hypertension?',
          'body':
              'Gestational hypertension is high blood pressure that develops after 20 weeks of pregnancy in a woman who previously had normal blood pressure. Unlike pre-eclampsia, it does not involve protein in the urine or other signs of organ damage, although it can progress to pre-eclampsia.',
        },
        {
          'title': 'Diagnosis',
          'body':
              'Gestational hypertension is diagnosed when blood pressure readings are consistently 140/90 mmHg or higher on two or more occasions. Regular monitoring is essential because some women with gestational hypertension will go on to develop pre-eclampsia.',
        },
        {
          'title': 'Risks to Mother & Baby',
          'body':
              'Gestational hypertension can reduce blood flow to the placenta, potentially affecting the baby\'s growth and oxygen supply. For the mother, persistent high blood pressure increases the risk of placental abruption, preterm delivery, and progression to pre-eclampsia.',
        },
        {
          'title': 'Monitoring & Management',
          'body':
              'Management includes regular blood pressure checks, urine tests to watch for protein, blood tests to assess organ function, and ultrasound scans to monitor the baby\'s growth. If blood pressure is significantly elevated, antihypertensive medications may be prescribed.',
        },
        {
          'title': 'Lifestyle Measures',
          'body':
              'While lifestyle changes alone may not control gestational hypertension, maintaining a healthy diet low in salt, staying well-hydrated, getting adequate rest, and avoiding excessive stress can support your overall well-being. Smoking and alcohol should be avoided completely.',
        },
        {
          'title': 'Delivery Planning',
          'body':
              'If gestational hypertension remains well-controlled, your doctor may recommend delivery at around 37 to 39 weeks depending on the severity. If the condition worsens or progresses to pre-eclampsia, earlier delivery may be necessary to protect the health of both mother and baby.',
        },
      ],
      sectionsKn: [],
    ),

    'placenta-praevia': const EducationTopicData(
      titleEn: 'Placenta Praevia',
      sectionsEn: [
        {
          'title': 'What Is Placenta Praevia?',
          'body':
              'Placenta praevia is a condition where the placenta partially or completely covers the cervix (the opening of the uterus). It is identified on ultrasound and can cause painless vaginal bleeding, particularly in the second and third trimesters.',
        },
        {
          'title': 'Types',
          'body':
              'Placenta praevia may be classified as minor (low-lying, near but not covering the cervix) or major (partially or completely covering the cervix). Many cases of low-lying placenta identified in early pregnancy resolve as the uterus grows and the placenta appears to move upward.',
        },
        {
          'title': 'Risk Factors',
          'body':
              'Risk factors include a previous caesarean section or uterine surgery, multiple pregnancies, a previous placenta praevia, smoking, and advanced maternal age. Women who have had multiple pregnancies are also at increased risk.',
        },
        {
          'title': 'Symptoms',
          'body':
              'The main symptom is painless, bright-red vaginal bleeding, usually in the second or third trimester. Some women may have no bleeding at all and the condition is discovered incidentally during a routine ultrasound scan.',
        },
        {
          'title': 'Management',
          'body':
              'Management depends on the amount of bleeding and the gestational age. Women with placenta praevia may be advised to avoid sexual intercourse, strenuous activity, and heavy lifting, and may need hospital admission if significant bleeding occurs.',
        },
        {
          'title': 'Delivery Planning',
          'body':
              'If the placenta remains over the cervix near term, a planned caesarean section is usually scheduled at around 36 to 37 weeks to avoid the risk of heavy bleeding during labour. Emergency delivery may be needed sooner if there is severe or uncontrollable bleeding.',
        },
        {
          'title': 'Placenta Accreta',
          'body':
              'In some cases of placenta praevia, particularly after previous caesarean sections, the placenta may grow too deeply into the uterine wall, a condition called placenta accreta. This carries a risk of severe bleeding at delivery and may require a specialist team and, in some cases, a hysterectomy.',
        },
      ],
      sectionsKn: [],
    ),

    'placental-abruption': const EducationTopicData(
      titleEn: 'Placental Abruption',
      sectionsEn: [
        {
          'title': 'What Is Placental Abruption?',
          'body':
              'Placental abruption occurs when the placenta separates partially or completely from the inner wall of the uterus before delivery. It is a serious obstetric emergency that can deprive the baby of oxygen and nutrients and cause severe bleeding in the mother.',
        },
        {
          'title': 'Causes & Risk Factors',
          'body':
              'Risk factors include chronic high blood pressure, pre-eclampsia, abdominal trauma (such as a car accident or fall), smoking, cocaine use, and a previous abruption. Advanced maternal age, premature rupture of membranes, and multiple pregnancies also increase the risk.',
        },
        {
          'title': 'Symptoms',
          'body':
              'Symptoms typically include sudden onset of abdominal pain, uterine tenderness, and vaginal bleeding, although in some cases the bleeding may be concealed behind the placenta. The uterus may feel hard and rigid, and the baby\'s heart rate may show signs of distress.',
        },
        {
          'title': 'Diagnosis',
          'body':
              'Diagnosis is primarily clinical, based on symptoms and examination. Ultrasound may help but does not always detect an abruption, so a normal ultrasound does not rule it out. Blood tests are done to check for clotting problems and anaemia.',
        },
        {
          'title': 'Treatment',
          'body':
              'Treatment depends on the severity of the abruption and the gestational age. In severe cases, immediate emergency delivery (usually by caesarean section) is necessary to save the lives of both mother and baby, along with blood transfusions and treatment of clotting disorders.',
        },
        {
          'title': 'Mild Abruption',
          'body':
              'If the abruption is mild, the pregnancy is not yet at term, and both mother and baby are stable, hospital admission with close monitoring may allow the pregnancy to continue. Steroid injections may be given to help mature the baby\'s lungs in case early delivery becomes necessary.',
        },
      ],
      sectionsKn: [],
    ),

    'iugr': const EducationTopicData(
      titleEn: 'Intrauterine Growth Restriction (IUGR)',
      sectionsEn: [
        {
          'title': 'What Is IUGR?',
          'body':
              'Intrauterine growth restriction (IUGR) refers to a condition where the baby is growing more slowly than expected and is smaller than the 10th percentile for gestational age. It indicates that the baby may not be receiving enough nutrients or oxygen through the placenta.',
        },
        {
          'title': 'Causes',
          'body':
              'IUGR can be caused by placental insufficiency (where the placenta does not function adequately), maternal conditions such as hypertension, pre-eclampsia, kidney disease, or clotting disorders, as well as foetal factors including chromosomal abnormalities and infections. Smoking, alcohol use, and poor maternal nutrition are also significant contributors.',
        },
        {
          'title': 'Diagnosis',
          'body':
              'IUGR is suspected when the fundal height measurement is smaller than expected and is confirmed by ultrasound showing the baby\'s estimated weight below the expected range. Doppler studies of blood flow through the umbilical artery and other foetal vessels help assess how well the placenta is functioning.',
        },
        {
          'title': 'Monitoring',
          'body':
              'Once IUGR is diagnosed, frequent monitoring with serial ultrasound scans, Doppler flow studies, and non-stress tests (cardiotocography) is essential. The aim is to track the baby\'s growth and well-being and to identify the optimal time for delivery.',
        },
        {
          'title': 'Management',
          'body':
              'There is no specific treatment to reverse IUGR, but managing underlying maternal conditions and ensuring good nutrition can help. In severe cases, corticosteroids may be given to mature the baby\'s lungs in preparation for early delivery if the baby\'s condition is deteriorating.',
        },
        {
          'title': 'Delivery Timing',
          'body':
              'The timing of delivery is a careful balance between the risks of prematurity and the risks of remaining in an inadequate intrauterine environment. Delivery is recommended when the risks of continued pregnancy outweigh the risks of prematurity, and this decision is based on Doppler findings and foetal assessment.',
        },
        {
          'title': 'Long-Term Outlook',
          'body':
              'Many babies with IUGR catch up in growth after birth with good postnatal care and nutrition. However, some may be at increased risk of metabolic conditions such as obesity, diabetes, and cardiovascular disease later in life, making long-term follow-up important.',
        },
      ],
      sectionsKn: [],
    ),

    'rh-incompatibility': const EducationTopicData(
      titleEn: 'Rh Incompatibility',
      sectionsEn: [
        {
          'title': 'What Is Rh Incompatibility?',
          'body':
              'Rh incompatibility occurs when a pregnant woman has Rh-negative blood and her baby has Rh-positive blood, inherited from the father. If the baby\'s Rh-positive blood enters the mother\'s bloodstream, her immune system may recognise it as foreign and produce antibodies against it.',
        },
        {
          'title': 'How Sensitisation Occurs',
          'body':
              'Mixing of foetal and maternal blood can occur during delivery, miscarriage, ectopic pregnancy, amniocentesis, or abdominal trauma. Once the mother is sensitised (has produced antibodies), these antibodies can cross the placenta in future pregnancies and attack the red blood cells of an Rh-positive baby.',
        },
        {
          'title': 'Haemolytic Disease of the Newborn',
          'body':
              'When maternal antibodies destroy the baby\'s red blood cells, the condition is called haemolytic disease of the foetus and newborn (HDFN). This can cause foetal anaemia, jaundice, and in severe cases, heart failure and hydrops foetalis (dangerous fluid accumulation in the baby\'s tissues).',
        },
        {
          'title': 'Prevention with Anti-D',
          'body':
              'The key to preventing Rh sensitisation is an injection of Anti-D immunoglobulin, given to Rh-negative mothers at around 28 weeks of pregnancy and within 72 hours after delivery of an Rh-positive baby. Anti-D is also given after any potentially sensitising event such as a miscarriage, amniocentesis, or significant abdominal trauma.',
        },
        {
          'title': 'Monitoring in Sensitised Mothers',
          'body':
              'If a mother is already sensitised, her antibody levels are monitored regularly throughout pregnancy. If antibody levels rise, the baby is closely monitored with Doppler ultrasound to detect signs of anaemia, and intrauterine blood transfusion may be necessary in severe cases.',
        },
        {
          'title': 'Delivery & Neonatal Care',
          'body':
              'Delivery may be planned early if the baby shows signs of severe anaemia or distress. After birth, the baby may need phototherapy for jaundice, and in severe cases, an exchange transfusion to replace the antibody-affected blood with fresh blood.',
        },
      ],
      sectionsKn: [],
    ),

    'multiple-pregnancy': const EducationTopicData(
      titleEn: 'Multiple Pregnancy (Twins/Triplets)',
      sectionsEn: [
        {
          'title': 'What Is a Multiple Pregnancy?',
          'body':
              'A multiple pregnancy means carrying two or more babies at the same time. Twins can be identical (monozygotic, from one fertilised egg that splits) or non-identical (dizygotic, from two separate eggs), and higher-order multiples can be any combination.',
        },
        {
          'title': 'How It Happens',
          'body':
              'Non-identical twins occur when two eggs are released and fertilised in the same cycle, and this is more common with fertility treatments, advancing maternal age, and a family history of twins. Identical twins occur randomly when a single fertilised egg splits, and the timing of the split determines whether the twins share a placenta or amniotic sac.',
        },
        {
          'title': 'Chorionicity & Its Importance',
          'body':
              'An early ultrasound determines whether twins share a placenta (monochorionic) or have separate placentas (dichorionic), and whether they share an amniotic sac. Monochorionic twins are at higher risk of complications, including twin-to-twin transfusion syndrome (TTTS), and require more frequent monitoring.',
        },
        {
          'title': 'Increased Risks',
          'body':
              'Multiple pregnancies carry higher risks of preterm birth, pre-eclampsia, gestational diabetes, anaemia, and caesarean delivery. Babies in multiple pregnancies are more likely to have low birth weight and may require admission to the neonatal intensive care unit.',
        },
        {
          'title': 'Antenatal Care',
          'body':
              'Women with multiple pregnancies need more frequent antenatal visits and ultrasound scans than women carrying a single baby. Dichorionic twins are typically scanned every four weeks from 12 weeks, while monochorionic twins are scanned every two weeks from 16 weeks.',
        },
        {
          'title': 'Delivery Planning',
          'body':
              'The timing and mode of delivery depend on the type of twin pregnancy and any complications. Uncomplicated dichorionic twins are typically delivered at around 37 weeks, monochorionic diamniotic twins at around 36 weeks, and monochorionic monoamniotic twins at around 32 to 33 weeks, usually by caesarean section.',
        },
        {
          'title': 'Practical Preparation',
          'body':
              'Preparing for multiple babies involves additional planning for feeding, sleeping arrangements, and support after birth. Connecting with local multiple birth groups and arranging practical help from family or friends can make the transition smoother.',
        },
      ],
      sectionsKn: [],
    ),

    'thyroid-pregnancy': const EducationTopicData(
      titleEn: 'Thyroid Disorders in Pregnancy',
      sectionsEn: [
        {
          'title': 'The Thyroid & Pregnancy',
          'body':
              'The thyroid gland produces hormones that regulate metabolism, energy, and development, and plays a crucial role during pregnancy in the baby\'s brain and nervous system development. Pregnancy itself increases the demand on the thyroid, and normal thyroid hormone ranges differ from those in non-pregnant women.',
        },
        {
          'title': 'Hypothyroidism',
          'body':
              'Hypothyroidism (underactive thyroid) in pregnancy is most commonly caused by Hashimoto\'s thyroiditis, an autoimmune condition. Untreated hypothyroidism can increase the risk of miscarriage, pre-eclampsia, anaemia, placental abruption, and impaired neurodevelopment in the baby.',
        },
        {
          'title': 'Treatment of Hypothyroidism',
          'body':
              'Hypothyroidism is treated with levothyroxine, a synthetic thyroid hormone that is safe during pregnancy and breastfeeding. The dose often needs to be increased during pregnancy, and thyroid function tests are monitored regularly — typically every four to six weeks — to ensure levels remain in the target range.',
        },
        {
          'title': 'Hyperthyroidism',
          'body':
              'Hyperthyroidism (overactive thyroid) in pregnancy is most commonly caused by Graves\' disease. Uncontrolled hyperthyroidism can lead to preterm birth, low birth weight, pre-eclampsia, maternal heart failure, and in severe cases, thyroid storm — a life-threatening condition.',
        },
        {
          'title': 'Treatment of Hyperthyroidism',
          'body':
              'Hyperthyroidism in pregnancy is treated with anti-thyroid medications, with propylthiouracil (PTU) preferred in the first trimester and carbimazole considered for the second and third trimesters. The lowest effective dose is used to minimise risks to the baby, and close monitoring of thyroid levels is essential.',
        },
        {
          'title': 'Postpartum Thyroiditis',
          'body':
              'Postpartum thyroiditis is an inflammation of the thyroid that can occur in the first year after delivery, initially causing hyperthyroidism followed by hypothyroidism. Most women recover normal thyroid function within 12 to 18 months, but some may develop permanent hypothyroidism and require ongoing treatment.',
        },
        {
          'title': 'Importance of Screening',
          'body':
              'Women with a personal or family history of thyroid disease, type 1 diabetes, or other autoimmune conditions should have their thyroid function tested early in pregnancy. Early detection and treatment of thyroid disorders significantly improve pregnancy outcomes for both mother and baby.',
        },
      ],
      sectionsKn: [],
    ),

    // ── Common Pregnancy Symptoms ─────────────────────────────────────────

    'back-pain-pregnancy': const EducationTopicData(
      titleEn: 'Back Pain in Pregnancy',
      sectionsEn: [
        {
          'title': 'Why Back Pain Occurs',
          'body':
              'Back pain is one of the most common complaints during pregnancy, affecting up to 70 per cent of women. It is caused by the growing uterus shifting the centre of gravity forward, hormonal changes (particularly relaxin) loosening ligaments, and the added weight placing strain on the spine.',
        },
        {
          'title': 'Types of Back Pain',
          'body':
              'Lumbar pain (lower back) is felt at or above the waist and may radiate to the legs, while posterior pelvic pain is felt below the waist and deep in the buttocks. Posterior pelvic pain is more common in pregnancy and can be aggravated by walking, climbing stairs, or prolonged standing.',
        },
        {
          'title': 'Prevention Tips',
          'body':
              'Maintaining good posture, wearing low-heeled supportive shoes, and avoiding lifting heavy objects can help prevent back pain. Strengthening your core and back muscles with gentle exercises before and during pregnancy provides additional support for your spine.',
        },
        {
          'title': 'Relief Measures',
          'body':
              'Applying heat or cold packs to the affected area, prenatal massage, and gentle stretching exercises can provide relief. Sleeping on your side with a pillow between your knees and using a pregnancy support belt may also help reduce discomfort.',
        },
        {
          'title': 'Exercise & Physiotherapy',
          'body':
              'Gentle exercises such as swimming, prenatal yoga, and pelvic tilts can strengthen the muscles that support the back. A physiotherapist experienced in pregnancy care can provide a tailored exercise programme and teach techniques to manage pain effectively.',
        },
        {
          'title': 'When to Seek Medical Help',
          'body':
              'Consult your doctor if back pain is severe, persistent, or accompanied by numbness, tingling, or weakness in the legs. Pain that comes in regular waves may be a sign of preterm labour and requires immediate medical assessment.',
        },
      ],
      sectionsKn: [],
    ),

    'heartburn-reflux-pregnancy': const EducationTopicData(
      titleEn: 'Heartburn & Reflux in Pregnancy',
      sectionsEn: [
        {
          'title': 'What Causes Heartburn in Pregnancy?',
          'body':
              'Heartburn during pregnancy is caused by the hormone progesterone, which relaxes the valve between the oesophagus and stomach, allowing stomach acid to flow upward. As the baby grows, the enlarging uterus puts additional pressure on the stomach, making reflux worse in the later months.',
        },
        {
          'title': 'Symptoms',
          'body':
              'Symptoms include a burning sensation in the chest or throat, a sour or bitter taste in the mouth, and sometimes difficulty swallowing or a sensation of food being stuck. Symptoms are often worse after eating, when bending over, or when lying down.',
        },
        {
          'title': 'Dietary Tips',
          'body':
              'Eating smaller, more frequent meals rather than large ones helps prevent the stomach from becoming too full. Avoiding trigger foods such as spicy, fatty, or acidic foods, chocolate, caffeine, and carbonated drinks can reduce symptoms significantly.',
        },
        {
          'title': 'Lifestyle Changes',
          'body':
              'Avoid lying down for at least two to three hours after eating, and elevate the head of your bed by 10 to 15 centimetres to reduce nighttime reflux. Wearing loose-fitting clothing and not eating too close to bedtime can also help.',
        },
        {
          'title': 'Safe Medications',
          'body':
              'Antacids containing calcium or magnesium are generally safe during pregnancy and can provide quick relief. If antacids are insufficient, your doctor may prescribe ranitidine or omeprazole, which are considered safe for use in pregnancy.',
        },
        {
          'title': 'When to See Your Doctor',
          'body':
              'Speak to your doctor if heartburn is severe, does not respond to lifestyle changes or antacids, or is accompanied by difficulty swallowing, weight loss, or vomiting blood. These symptoms may require further investigation to rule out other conditions.',
        },
      ],
      sectionsKn: [],
    ),

    'constipation-pregnancy': const EducationTopicData(
      titleEn: 'Constipation in Pregnancy',
      sectionsEn: [
        {
          'title': 'Why Constipation Is Common',
          'body':
              'Constipation affects up to 40 per cent of pregnant women and is largely caused by the hormone progesterone, which slows down the movement of food through the intestines. Iron supplements, commonly prescribed during pregnancy, and reduced physical activity can also contribute.',
        },
        {
          'title': 'Symptoms',
          'body':
              'Symptoms include infrequent bowel movements (fewer than three per week), hard or lumpy stools, straining during bowel movements, and a feeling of incomplete evacuation. Abdominal bloating and discomfort are also common accompanying symptoms.',
        },
        {
          'title': 'Dietary Changes',
          'body':
              'Increasing fibre intake through fruits, vegetables, whole grains, and legumes is one of the most effective ways to relieve constipation. Prunes, pears, and kiwi fruit are particularly helpful, and fibre should be increased gradually to avoid bloating and gas.',
        },
        {
          'title': 'Hydration & Exercise',
          'body':
              'Drinking at least eight glasses of water daily helps soften stools and promote regular bowel movements. Regular gentle exercise such as walking for 20 to 30 minutes a day stimulates bowel activity and can significantly reduce constipation.',
        },
        {
          'title': 'Safe Laxatives',
          'body':
              'If dietary changes are not sufficient, your doctor may recommend a stool softener such as lactulose or a bulk-forming laxative such as ispaghula husk, which are generally safe during pregnancy. Stimulant laxatives should only be used under medical supervision as they can cause cramping.',
        },
        {
          'title': 'Preventing Complications',
          'body':
              'Chronic constipation can lead to haemorrhoids and anal fissures, which cause pain and bleeding during bowel movements. Treating constipation promptly and avoiding straining are the best ways to prevent these uncomfortable complications.',
        },
      ],
      sectionsKn: [],
    ),

    'swelling-oedema-pregnancy': const EducationTopicData(
      titleEn: 'Swelling & Oedema in Pregnancy',
      sectionsEn: [
        {
          'title': 'Why Swelling Occurs',
          'body':
              'Mild swelling (oedema) of the feet, ankles, and hands is very common in pregnancy, particularly in the third trimester, due to increased blood volume and fluid retention. The growing uterus also puts pressure on the pelvic veins, slowing the return of blood from the legs.',
        },
        {
          'title': 'Normal vs Concerning Swelling',
          'body':
              'Gradual, symmetrical swelling that worsens during the day and improves with rest is usually normal. Sudden or severe swelling, particularly of the face and hands, accompanied by headache or visual disturbances, may be a sign of pre-eclampsia and requires urgent medical attention.',
        },
        {
          'title': 'Relief Measures',
          'body':
              'Elevating your legs when sitting or lying down, avoiding standing for prolonged periods, and sleeping on your left side can help reduce swelling. Gentle ankle exercises such as circling and flexing the feet promote blood circulation.',
        },
        {
          'title': 'Compression Stockings',
          'body':
              'Graduated compression stockings can help prevent fluid from pooling in the lower legs and reduce swelling. For best results, put them on first thing in the morning before swelling develops, and wear them throughout the day.',
        },
        {
          'title': 'Diet & Hydration',
          'body':
              'Paradoxically, drinking plenty of water helps the body retain less fluid, while a diet low in processed and salty foods can also reduce oedema. Including potassium-rich foods such as bananas, sweet potatoes, and spinach may help balance fluid levels.',
        },
        {
          'title': 'When to Seek Medical Advice',
          'body':
              'Contact your doctor or midwife promptly if you notice sudden swelling in your face or hands, swelling in only one leg (which may indicate a blood clot), or swelling accompanied by headache, visual changes, or upper abdominal pain. These symptoms need urgent assessment to rule out serious conditions.',
        },
      ],
      sectionsKn: [],
    ),

    'varicose-veins-haemorrhoids': const EducationTopicData(
      titleEn: 'Varicose Veins & Haemorrhoids in Pregnancy',
      sectionsEn: [
        {
          'title': 'What Are Varicose Veins?',
          'body':
              'Varicose veins are swollen, twisted veins that appear close to the surface of the skin, most commonly in the legs. During pregnancy, increased blood volume, hormonal changes that relax vein walls, and pressure from the growing uterus on the pelvic veins all contribute to their development.',
        },
        {
          'title': 'Symptoms of Varicose Veins',
          'body':
              'Varicose veins may cause aching, heaviness, throbbing, or itching in the affected legs, which often worsen towards the end of the day. Some women also develop varicose veins in the vulva, which can cause pressure and discomfort in the pelvic area.',
        },
        {
          'title': 'What Are Haemorrhoids?',
          'body':
              'Haemorrhoids (piles) are essentially varicose veins of the rectum and anus, and are very common during pregnancy due to hormonal changes, constipation, and the pressure of the growing uterus. They may cause itching, pain, and bleeding during bowel movements.',
        },
        {
          'title': 'Prevention',
          'body':
              'Regular exercise, avoiding prolonged standing or sitting, elevating the legs when resting, and wearing compression stockings can help prevent or reduce varicose veins. Preventing constipation through a high-fibre diet and adequate hydration is the best way to avoid haemorrhoids.',
        },
        {
          'title': 'Treatment for Varicose Veins',
          'body':
              'During pregnancy, treatment focuses on relieving symptoms with compression stockings, regular leg elevation, and gentle exercise. Most pregnancy-related varicose veins improve significantly within three to twelve months after delivery, and surgical treatment is rarely needed.',
        },
        {
          'title': 'Treatment for Haemorrhoids',
          'body':
              'Over-the-counter haemorrhoid creams and suppositories that are safe in pregnancy can provide relief from itching and discomfort. Warm sitz baths (sitting in warm water for 10 to 15 minutes), ice packs, and keeping the area clean and dry also help. Consult your doctor if haemorrhoids are severe or bleeding is heavy.',
        },
      ],
      sectionsKn: [],
    ),

    'leg-cramps-pregnancy': const EducationTopicData(
      titleEn: 'Leg Cramps & Restless Legs in Pregnancy',
      sectionsEn: [
        {
          'title': 'What Are Leg Cramps?',
          'body':
              'Leg cramps are sudden, involuntary, painful contractions of the calf or foot muscles that commonly affect pregnant women, particularly in the second and third trimesters. They most often occur at night and can disrupt sleep significantly.',
        },
        {
          'title': 'Causes',
          'body':
              'The exact cause is not fully understood, but contributing factors may include changes in blood circulation, the extra weight carried during pregnancy, pressure of the uterus on blood vessels and nerves, and possible deficiencies in minerals such as magnesium, calcium, or potassium. Fatigue and dehydration may also play a role.',
        },
        {
          'title': 'Immediate Relief',
          'body':
              'When a cramp strikes, gently stretch the affected muscle by flexing your foot upward (pulling your toes towards your shin) and massaging the area. Walking around briefly or applying a warm compress to the muscle can also help relieve the spasm.',
        },
        {
          'title': 'Prevention Strategies',
          'body':
              'Gentle calf stretches before bed, staying well-hydrated throughout the day, and regular gentle exercise such as walking can help prevent cramps. Avoiding pointing your toes when stretching or lying in bed may also reduce the frequency of cramps.',
        },
        {
          'title': 'Restless Legs Syndrome',
          'body':
              'Restless legs syndrome (RLS) is an uncomfortable urge to move the legs, often accompanied by tingling, crawling, or aching sensations, which worsens at rest and in the evening. It affects up to 25 per cent of pregnant women and is more common in those with iron deficiency or low folate levels.',
        },
        {
          'title': 'Managing Restless Legs',
          'body':
              'Ensuring adequate iron and folate levels through supplements and diet is important, as deficiency can worsen RLS. Gentle leg massage, warm baths before bed, moderate exercise during the day, and maintaining a consistent sleep routine can help reduce symptoms.',
        },
        {
          'title': 'When to See Your Doctor',
          'body':
              'Consult your doctor if cramps are very frequent or severe, if you notice persistent swelling, redness, or warmth in one leg (which may suggest a blood clot), or if restless legs significantly affect your sleep and daily functioning. Your doctor may check your mineral levels and recommend appropriate supplements.',
        },
      ],
      sectionsKn: [],
    ),

    // ── Labour & Delivery ──────────────────────────────────────────────────

    'signs-of-labour': const EducationTopicData(
      titleEn: 'Signs of Labour',
      sectionsEn: [
        {
          'title': 'What Is Labour?',
          'body':
              'Labour is the process by which your body prepares to deliver your baby. It involves regular contractions of the uterus that cause the cervix to dilate (open) and efface (thin out), eventually allowing the baby to pass through the birth canal.',
        },
        {
          'title': 'Early Signs',
          'body':
              'In the days or weeks before labour begins, you may notice the baby "dropping" lower into your pelvis, increased vaginal discharge or a "show" (mucus plug tinged with blood), and irregular Braxton Hicks contractions that become more noticeable. You may also experience a burst of energy known as "nesting".',
        },
        {
          'title': 'True Labour Contractions',
          'body':
              'True labour contractions are regular, progressively stronger, and closer together over time. They do not ease with rest, position changes, or hydration—unlike Braxton Hicks contractions. Time your contractions from the start of one to the start of the next.',
        },
        {
          'title': 'Waters Breaking',
          'body':
              'Rupture of the membranes, commonly known as "waters breaking", can present as a sudden gush or a slow trickle of clear or slightly pink fluid. If you suspect your waters have broken, note the time, colour, and smell of the fluid and contact your hospital or midwife promptly.',
        },
        {
          'title': 'When to Go to Hospital',
          'body':
              'Contact your maternity unit when contractions are regular and about five minutes apart, each lasting around 60 seconds, for at least one hour. Go immediately if your waters break, if you notice any bleeding, or if your baby is moving less than usual.',
        },
        {
          'title': 'Pre-Labour versus Active Labour',
          'body':
              'Pre-labour (or the latent phase) can last many hours with irregular contractions and slow cervical change. Active labour is when contractions become strong and regular, and the cervix dilates from about four centimetres to full dilation at ten centimetres. Understanding this distinction helps manage expectations about the timeline.',
        },
      ],
      sectionsKn: [],
    ),

    'stages-of-labour': const EducationTopicData(
      titleEn: 'Stages of Labour',
      sectionsEn: [
        {
          'title': 'First Stage',
          'body':
              'The first stage of labour begins with regular contractions and ends when the cervix is fully dilated to ten centimetres. It is divided into the latent phase (early, slower dilation) and the active phase (faster dilation). This is typically the longest stage, especially for first-time mothers.',
        },
        {
          'title': 'Transition Phase',
          'body':
              'The transition phase is the end of the first stage, when the cervix dilates from about eight to ten centimetres. Contractions are very strong and close together. You may feel overwhelmed, nauseous, or shaky. This intense phase is usually the shortest part of the first stage.',
        },
        {
          'title': 'Second Stage',
          'body':
              'The second stage begins when the cervix is fully dilated and ends with the birth of your baby. You will feel a strong urge to push with each contraction. Your midwife or doctor will guide you on when and how to push effectively. This stage can last from a few minutes to several hours.',
        },
        {
          'title': 'Third Stage',
          'body':
              'The third stage is the delivery of the placenta, which usually occurs within 30 minutes of the baby being born. This can be managed actively with an injection of oxytocin to speed delivery of the placenta, or physiologically, allowing it to deliver naturally. Your doctor or midwife will check that the placenta is complete.',
        },
        {
          'title': 'Monitoring During Labour',
          'body':
              'Throughout labour, your midwife or doctor will monitor your baby\'s heart rate, your contractions, blood pressure, and pulse. Continuous electronic fetal monitoring may be used if there are concerns, or intermittent monitoring with a handheld Doppler device in low-risk labours.',
        },
      ],
      sectionsKn: [],
    ),

    'pain-relief-labour': const EducationTopicData(
      titleEn: 'Pain Relief in Labour',
      sectionsEn: [
        {
          'title': 'Non-Medical Pain Relief',
          'body':
              'Non-medical options include breathing techniques, warm water immersion (birth pool or shower), massage, movement and position changes, and using a TENS (transcutaneous electrical nerve stimulation) machine. These methods can help you cope with contractions and may be used alone or alongside medical pain relief.',
        },
        {
          'title': 'Entonox (Gas and Air)',
          'body':
              'Entonox is a mixture of oxygen and nitrous oxide that you breathe in through a mouthpiece during contractions. It does not remove pain completely but can take the edge off. It works quickly, wears off quickly, and does not affect the baby. Some women feel lightheaded or nauseous when using it.',
        },
        {
          'title': 'Pethidine and Opioid Injections',
          'body':
              'Pethidine or similar opioid injections can be given into the thigh muscle to help with pain. They take about 20 minutes to work and last two to four hours. Side effects include drowsiness, nausea, and dizziness. If given close to delivery, they can temporarily affect the baby\'s breathing, which can be reversed with medication.',
        },
        {
          'title': 'Epidural Anaesthesia',
          'body':
              'An epidural involves inserting a fine catheter into the epidural space in your lower back, through which local anaesthetic is delivered to numb the nerves from your waist down. It provides the most effective pain relief in labour. An anaesthetist performs this procedure, and you will need continuous monitoring and an intravenous drip.',
        },
        {
          'title': 'Side Effects of Epidurals',
          'body':
              'Common side effects include low blood pressure, difficulty passing urine (a urinary catheter may be needed), heaviness in the legs, and a slightly longer second stage of labour. Severe complications such as headache from dural puncture or nerve damage are rare.',
        },
        {
          'title': 'Making Your Choice',
          'body':
              'There is no right or wrong choice for pain relief—it depends on your preferences, your labour, and the available options at your birthing facility. Discuss your options with your midwife or doctor during pregnancy so you feel informed and supported in your decisions.',
        },
      ],
      sectionsKn: [],
    ),

    'caesarean-section': const EducationTopicData(
      titleEn: 'Caesarean Section',
      sectionsEn: [
        {
          'title': 'What Is a Caesarean Section?',
          'body':
              'A caesarean section (C-section) is a surgical procedure in which the baby is delivered through an incision in the mother\'s abdomen and uterus. It may be planned (elective) or performed as an emergency when complications arise during labour.',
        },
        {
          'title': 'Reasons for a Caesarean',
          'body':
              'Common reasons include the baby being in a breech position, placenta praevia, previous caesarean section, failure to progress in labour, or concerns about the baby\'s wellbeing during labour. Your obstetrician will discuss the specific indications with you.',
        },
        {
          'title': 'The Procedure',
          'body':
              'Most caesarean sections are performed under spinal or epidural anaesthesia, so you are awake but numb from the waist down. A horizontal incision is made just above the pubic hairline. The baby is usually delivered within the first few minutes, and the procedure takes about 45 minutes in total.',
        },
        {
          'title': 'Recovery After Caesarean',
          'body':
              'Hospital stay is typically two to four days. You will need pain relief and support with movement and caring for your baby in the first few days. Avoid heavy lifting and driving for about six weeks. The wound requires care to prevent infection, and you should report any redness, swelling, or discharge.',
        },
        {
          'title': 'Future Pregnancies',
          'body':
              'Having a caesarean section does not necessarily mean all future deliveries must be by caesarean. Many women can have a vaginal birth after caesarean (VBAC), depending on the reason for the previous caesarean, the type of uterine incision, and other factors. Discuss your options with your obstetrician.',
        },
      ],
      sectionsKn: [],
    ),

    'induction-of-labour': const EducationTopicData(
      titleEn: 'Induction of Labour',
      sectionsEn: [
        {
          'title': 'What Is Induction?',
          'body':
              'Induction of labour is the process of artificially starting labour before it begins on its own. It may be recommended when continuing the pregnancy poses a risk to the mother or baby, such as going significantly past the due date, pre-eclampsia, or concerns about the baby\'s growth.',
        },
        {
          'title': 'Methods of Induction',
          'body':
              'Common methods include a membrane sweep (stretching the cervix during a vaginal examination), vaginal prostaglandin gel or pessary to soften and open the cervix, artificial rupture of membranes (breaking the waters), and an oxytocin drip to stimulate contractions.',
        },
        {
          'title': 'What to Expect',
          'body':
              'Induction can take time, sometimes one to two days, especially if the cervix is not yet ready. You will be monitored closely throughout the process. Induced contractions can sometimes be more intense, and you may wish to discuss pain relief options beforehand.',
        },
        {
          'title': 'Risks and Benefits',
          'body':
              'The main benefit is reducing the risk associated with continuing the pregnancy. Risks include stronger, more painful contractions, a slightly higher chance of requiring assisted delivery or caesarean section, and rarely, uterine hyperstimulation. Your doctor will weigh these factors with you.',
        },
        {
          'title': 'Your Choices',
          'body':
              'Induction is a recommendation, not a requirement. You have the right to ask questions, request more time, or decline induction after a thorough discussion of the benefits and risks in your specific situation.',
        },
      ],
      sectionsKn: [],
    ),

    'assisted-delivery': const EducationTopicData(
      titleEn: 'Assisted Delivery (Forceps and Ventouse)',
      sectionsEn: [
        {
          'title': 'What Is Assisted Delivery?',
          'body':
              'An assisted or instrumental delivery uses forceps (smooth metal instruments) or a ventouse (vacuum cup) to help guide the baby out during the pushing stage of labour. It is performed by a doctor when extra help is needed to deliver the baby safely.',
        },
        {
          'title': 'When It May Be Needed',
          'body':
              'Assisted delivery may be recommended if the second stage is prolonged, you are exhausted, or there are concerns about the baby\'s heart rate. It may also be used if the baby is in a slightly awkward position and needs gentle rotation to be born.',
        },
        {
          'title': 'What Happens During the Procedure',
          'body':
              'You will need adequate pain relief, usually an epidural or local anaesthetic. An episiotomy (a small cut to widen the vaginal opening) may be performed. The doctor will apply the forceps or ventouse during a contraction and, with your pushing effort, deliver the baby.',
        },
        {
          'title': 'Recovery',
          'body':
              'You may experience more bruising or soreness in the perineal area compared to a normal delivery. An episiotomy will be sutured and typically heals within a few weeks. Pain relief, ice packs, and pelvic floor exercises will help your recovery. Most babies delivered with assistance are perfectly well.',
        },
      ],
      sectionsKn: [],
    ),

    'birth-plan': const EducationTopicData(
      titleEn: 'Creating a Birth Plan',
      sectionsEn: [
        {
          'title': 'What Is a Birth Plan?',
          'body':
              'A birth plan is a written record of your preferences for labour and delivery. It helps your healthcare team understand your wishes and provides a starting point for discussions about your care. It is a guide rather than a fixed contract, as labour can be unpredictable.',
        },
        {
          'title': 'What to Include',
          'body':
              'Consider your preferences for pain relief, birthing positions, who you want as your birth partner, skin-to-skin contact after birth, cord clamping, and feeding your baby. You may also include preferences about monitoring, mobility during labour, and the environment (lighting, music).',
        },
        {
          'title': 'Discussing Your Plan',
          'body':
              'Share your birth plan with your midwife or doctor during pregnancy so they can advise on what is available and realistic at your chosen birthing facility. Being informed about the options helps you make confident decisions during labour.',
        },
        {
          'title': 'Staying Flexible',
          'body':
              'While it is important to have preferences, be prepared that things may not go exactly as planned. Medical situations may arise that require changes to your plan for the safety of you and your baby. A flexible approach helps reduce anxiety if adjustments are needed.',
        },
      ],
      sectionsKn: [],
    ),

    // ── Postpartum Care ────────────────────────────────────────────────────

    'postpartum-recovery': const EducationTopicData(
      titleEn: 'Postpartum Physical Recovery',
      sectionsEn: [
        {
          'title': 'The First Few Days',
          'body':
              'After delivery, your body begins a significant recovery process. You will experience lochia (vaginal bleeding and discharge) that gradually decreases over four to six weeks. Afterpains—uterine cramps as the uterus contracts back to its pre-pregnancy size—are common, especially during breastfeeding.',
        },
        {
          'title': 'Perineal Care',
          'body':
              'If you had a vaginal delivery, the perineal area may be sore or swollen, particularly if you had a tear or episiotomy. Keep the area clean by rinsing with warm water after using the toilet. Ice packs wrapped in cloth can reduce swelling. Pain usually improves significantly within the first two weeks.',
        },
        {
          'title': 'Caesarean Recovery',
          'body':
              'If you had a caesarean section, keep the wound clean and dry. Pain around the incision is normal for several weeks. Avoid heavy lifting and strenuous activity for about six weeks. Report any signs of wound infection such as increasing redness, swelling, discharge, or fever.',
        },
        {
          'title': 'Returning to Exercise',
          'body':
              'Gentle walking can begin soon after delivery, but more strenuous exercise should wait until you feel ready and have had your postnatal check-up, usually at six weeks. Pelvic floor exercises can be started soon after birth and are important for recovery. Listen to your body and build up gradually.',
        },
        {
          'title': 'Follow-Up Appointments',
          'body':
              'A postnatal check-up is typically scheduled at six weeks after delivery. This appointment assesses your physical and emotional recovery, discusses contraception, checks your blood pressure, and provides an opportunity to raise any concerns about your health or your baby.',
        },
      ],
      sectionsKn: [],
    ),

    'breastfeeding': const EducationTopicData(
      titleEn: 'Breastfeeding',
      sectionsEn: [
        {
          'title': 'Benefits of Breastfeeding',
          'body':
              'Breast milk provides complete nutrition for your baby in the first six months of life and continues to be beneficial alongside solid foods. It contains antibodies that help protect against infections, and breastfeeding reduces the risk of sudden infant death syndrome (SIDS), childhood obesity, and certain allergies.',
        },
        {
          'title': 'Getting Started',
          'body':
              'Early skin-to-skin contact after birth encourages the first breastfeed. Colostrum, the thick yellowish first milk, is rich in antibodies and perfectly meets your newborn\'s needs. Feed your baby on demand—usually 8 to 12 times in 24 hours in the early weeks.',
        },
        {
          'title': 'Positioning and Attachment',
          'body':
              'Good positioning and attachment are key to comfortable and effective breastfeeding. Your baby should be held close with their nose level with your nipple. When they open their mouth wide, bring them to the breast so they take a large mouthful of breast, not just the nipple. Seek help from a midwife or lactation consultant if needed.',
        },
        {
          'title': 'Common Challenges',
          'body':
              'Sore or cracked nipples usually result from poor attachment and improve with correct positioning. Engorgement (overly full, hard breasts) can be relieved by frequent feeding and gentle expression. Blocked ducts present as a tender lump and respond to continued feeding, massage, and warmth.',
        },
        {
          'title': 'Mastitis',
          'body':
              'Mastitis is inflammation of the breast, often caused by a blocked duct or infection. Symptoms include a red, hot, painful area on the breast, flu-like symptoms, and fever. Continue breastfeeding from the affected breast, rest, and see your doctor—antibiotics may be needed.',
        },
        {
          'title': 'When to Seek Help',
          'body':
              'If you are struggling with breastfeeding, experiencing persistent pain, or concerned that your baby is not getting enough milk, reach out to your midwife, health visitor, or a breastfeeding support group. Early assistance can make a significant difference.',
        },
      ],
      sectionsKn: [],
    ),

    'postpartum-mental-health': const EducationTopicData(
      titleEn: 'Postpartum Mental Health',
      sectionsEn: [
        {
          'title': 'Baby Blues',
          'body':
              'The "baby blues" affect up to 80 per cent of new mothers and typically appear within the first few days after birth. Symptoms include tearfulness, mood swings, irritability, and feeling overwhelmed. Baby blues usually resolve on their own within two weeks and are related to hormonal changes, fatigue, and the adjustment to parenthood.',
        },
        {
          'title': 'Postnatal Depression',
          'body':
              'Postnatal depression is more severe and longer-lasting than baby blues. It can develop any time in the first year after birth and affects about 10 to 15 per cent of mothers. Symptoms include persistent low mood, loss of interest in activities, difficulty bonding with the baby, sleep disturbance beyond what is expected, and feelings of guilt or worthlessness.',
        },
        {
          'title': 'Postnatal Anxiety',
          'body':
              'Anxiety disorders are equally common after birth and can occur alongside depression. Symptoms include excessive worry, racing thoughts, difficulty relaxing, physical symptoms such as a racing heart or tight chest, and intrusive thoughts about harm coming to the baby.',
        },
        {
          'title': 'Getting Help',
          'body':
              'If you are experiencing symptoms of postnatal depression or anxiety, speak to your doctor, midwife, or health visitor. Effective treatments are available, including counselling, cognitive behavioural therapy, and medication that is safe during breastfeeding. Early intervention leads to better outcomes for both you and your baby.',
        },
        {
          'title': 'Supporting Your Partner',
          'body':
              'Partners can also experience postnatal depression and anxiety. Being aware of the signs, encouraging open communication, and supporting each other in seeking help are important. Practical support from family and friends can reduce stress for the whole family.',
        },
      ],
      sectionsKn: [],
    ),

    'postpartum-contraception': const EducationTopicData(
      titleEn: 'Postpartum Contraception',
      sectionsEn: [
        {
          'title': 'Fertility After Birth',
          'body':
              'Ovulation can return as early as three weeks after birth, even if you are breastfeeding. It is possible to become pregnant before your first period returns. If you do not wish to conceive again immediately, it is important to consider contraception soon after delivery.',
        },
        {
          'title': 'Options While Breastfeeding',
          'body':
              'Progesterone-only methods are safe during breastfeeding and include the progesterone-only pill ("mini pill"), the contraceptive implant, the hormonal intrauterine device (IUD), and the contraceptive injection. Combined hormonal methods (containing oestrogen) are generally avoided in the first six months of breastfeeding as they may reduce milk supply.',
        },
        {
          'title': 'Long-Acting Reversible Contraception',
          'body':
              'Long-acting reversible contraceptive (LARC) methods, such as the copper IUD, hormonal IUD, or implant, are highly effective and convenient as they do not require daily attention. They can be inserted at your postnatal check-up or earlier, depending on the method and your recovery.',
        },
        {
          'title': 'Discussing Your Options',
          'body':
              'Your ideal contraception depends on your health, breastfeeding status, plans for future pregnancies, and personal preferences. Discuss your options with your doctor or midwife during pregnancy or at your postnatal appointment so you have a plan in place.',
        },
      ],
      sectionsKn: [],
    ),

    'perinatal-loss': const EducationTopicData(
      titleEn: 'Perinatal Loss and Bereavement',
      sectionsEn: [
        {
          'title': 'Understanding Perinatal Loss',
          'body':
              'Perinatal loss includes miscarriage, stillbirth, and neonatal death. Each of these losses is devastating, and grief is a natural response. There is no right or wrong way to grieve, and the intensity and duration of grief varies greatly between individuals and families.',
        },
        {
          'title': 'Emotional Support',
          'body':
              'Talking about your feelings with your partner, family, friends, or a trained counsellor can help. Many hospitals have bereavement midwives or counsellors who specialise in perinatal loss. Support groups, either in person or online, can connect you with others who have experienced similar losses.',
        },
        {
          'title': 'Physical Recovery',
          'body':
              'After a loss, your body still goes through a physical recovery. You may experience bleeding, breast engorgement, and hormonal changes. Your doctor or midwife will provide guidance on managing these physical symptoms and schedule follow-up appointments to monitor your recovery.',
        },
        {
          'title': 'Future Pregnancies',
          'body':
              'When you feel ready to consider another pregnancy, your doctor can discuss any investigations into the cause of your loss, the likelihood of recurrence, and any additional monitoring or treatment that may be beneficial. There is no prescribed timeline—take the time you need before making this decision.',
        },
      ],
      sectionsKn: [],
    ),

    // ── Newborn Care ───────────────────────────────────────────────────────

    'newborn-screening': const EducationTopicData(
      titleEn: 'Newborn Screening Tests',
      sectionsEn: [
        {
          'title': 'Why Screening Is Done',
          'body':
              'Newborn screening tests are performed in the first few days of life to identify conditions that may not be immediately obvious but can cause serious health problems if untreated. Early detection allows treatment to begin before symptoms develop, greatly improving outcomes.',
        },
        {
          'title': 'Heel Prick Test',
          'body':
              'The heel prick or Guthrie test is performed between 48 and 72 hours after birth. A few drops of blood from the baby\'s heel are collected on a special card and tested for several conditions, including phenylketonuria (PKU), congenital hypothyroidism, cystic fibrosis, and sickle cell disease.',
        },
        {
          'title': 'Hearing Screening',
          'body':
              'Newborn hearing screening is usually performed before you leave the hospital or within the first few weeks. A small earpiece or sensor is placed on the baby to measure responses to sound. The test is painless and quick. If results are unclear, a follow-up test is arranged.',
        },
        {
          'title': 'Physical Examination',
          'body':
              'A thorough physical examination is performed within 72 hours of birth and again at six to eight weeks. The doctor checks the baby\'s eyes, heart, hips, and in boys, the testes. Any abnormalities detected are investigated further and managed promptly.',
        },
        {
          'title': 'Understanding Results',
          'body':
              'Most screening results are normal. If a result is abnormal or borderline, you will be contacted for further testing. A positive screening result does not always mean the baby has the condition—confirmatory tests are needed. Your healthcare team will guide you through this process.',
        },
      ],
      sectionsKn: [],
    ),

    'newborn-feeding': const EducationTopicData(
      titleEn: 'Feeding Your Newborn',
      sectionsEn: [
        {
          'title': 'Feeding Options',
          'body':
              'Breast milk is recommended as the sole source of nutrition for the first six months. If breastfeeding is not possible or not your choice, infant formula provides a safe and nutritionally complete alternative. Some mothers combine breast and formula feeding. The most important thing is that your baby is fed, growing, and thriving.',
        },
        {
          'title': 'Formula Feeding',
          'body':
              'If using formula, choose a first infant formula suitable from birth. Always follow the preparation instructions carefully: use freshly boiled water cooled to 70 degrees Celsius, measure the powder accurately, and use the feed within two hours. Never microwave formula as it heats unevenly.',
        },
        {
          'title': 'Feeding Frequency',
          'body':
              'Newborns feed frequently—typically 8 to 12 times in 24 hours for breastfed babies and slightly less often for formula-fed babies. Feed on demand, watching for hunger cues such as rooting, lip smacking, and bringing hands to mouth. Crying is a late hunger cue.',
        },
        {
          'title': 'Signs Your Baby Is Getting Enough',
          'body':
              'Signs of adequate feeding include regular wet and dirty nappies (at least six wet nappies a day by day five), your baby seeming content after feeds, and steady weight gain after the initial few days. Your midwife or health visitor will monitor your baby\'s weight and growth.',
        },
        {
          'title': 'Winding and Reflux',
          'body':
              'Babies often swallow air during feeds, which can cause discomfort. Gently wind your baby during and after feeds by holding them upright and rubbing or patting their back. Some posseting (small amounts of milk coming back up) is normal. If your baby is frequently vomiting large amounts or seems distressed, consult your doctor.',
        },
      ],
      sectionsKn: [],
    ),

    'newborn-jaundice': const EducationTopicData(
      titleEn: 'Newborn Jaundice',
      sectionsEn: [
        {
          'title': 'What Is Jaundice?',
          'body':
              'Newborn jaundice is a yellow discolouration of the skin and whites of the eyes caused by a build-up of bilirubin—a substance produced when red blood cells are broken down. It is very common, affecting about 60 per cent of term babies and 80 per cent of premature babies.',
        },
        {
          'title': 'Physiological Jaundice',
          'body':
              'Physiological jaundice appears after the first 24 hours of life, usually on day two or three, and resolves within two weeks. It occurs because the newborn\'s immature liver is still developing the ability to process bilirubin efficiently. It is usually mild and harmless.',
        },
        {
          'title': 'When Jaundice Needs Treatment',
          'body':
              'Jaundice that appears within the first 24 hours, is very pronounced, or persists beyond 14 days (21 days in premature babies) requires investigation. Very high bilirubin levels, if untreated, can rarely cause brain damage. A blood test measures the bilirubin level to determine if treatment is needed.',
        },
        {
          'title': 'Phototherapy',
          'body':
              'Phototherapy is the main treatment for significant jaundice. The baby is placed under a special blue light (with eye protection) that helps break down bilirubin in the skin. The baby is undressed to maximise skin exposure. Frequent feeding is encouraged to help eliminate bilirubin through stool and urine.',
        },
        {
          'title': 'When to Seek Help',
          'body':
              'Contact your midwife or doctor if your baby becomes more yellow, is not feeding well, is very sleepy or difficult to wake for feeds, has dark urine or pale chalky stools, or if you are concerned for any reason. Trust your instincts—early assessment is important.',
        },
      ],
      sectionsKn: [],
    ),

    'newborn-sleep-safety': const EducationTopicData(
      titleEn: 'Safe Sleep for Newborns',
      sectionsEn: [
        {
          'title': 'Safe Sleep Position',
          'body':
              'Always place your baby on their back to sleep, for every sleep, day and night. This is the single most important step to reduce the risk of sudden infant death syndrome (SIDS). Once your baby can roll both ways (usually around four to six months), they can find their own sleep position.',
        },
        {
          'title': 'Safe Sleep Environment',
          'body':
              'Use a firm, flat mattress in a clear cot or Moses basket with no pillows, duvets, bumpers, or soft toys. Keep the room temperature comfortable (16 to 20 degrees Celsius). The safest place for your baby to sleep for the first six months is in a cot in your room.',
        },
        {
          'title': 'Reducing SIDS Risk',
          'body':
              'In addition to back sleeping and a safe environment, breastfeeding, keeping your baby smoke-free (before and after birth), and not sleeping with your baby on a sofa or armchair all reduce SIDS risk. Avoid letting your baby get too hot—use lightweight blankets or a sleeping bag appropriate for the room temperature.',
        },
        {
          'title': 'Newborn Sleep Patterns',
          'body':
              'Newborns sleep 16 to 18 hours a day but in short bursts of two to four hours, as they need frequent feeds. They do not distinguish day from night initially. Gentle routines, such as dimming lights at night and keeping night feeds quiet, help your baby gradually develop a day-night rhythm.',
        },
        {
          'title': 'Co-Sleeping Safety',
          'body':
              'If you choose to share a bed with your baby, never do so if you or your partner smoke, have consumed alcohol or drugs, are extremely tired, or if the baby was premature or of low birth weight. The safest option is a bedside cot that attaches to your bed, allowing closeness while maintaining a separate sleep surface.',
        },
      ],
      sectionsKn: [],
    ),

    'newborn-vaccinations': const EducationTopicData(
      titleEn: 'Newborn and Infant Vaccinations',
      sectionsEn: [
        {
          'title': 'Why Vaccinations Matter',
          'body':
              'Vaccinations protect your baby against serious and potentially life-threatening diseases. Babies are particularly vulnerable to infections because their immune systems are still developing. Immunisations are one of the most effective ways to keep your child healthy.',
        },
        {
          'title': 'The Vaccination Schedule',
          'body':
              'In India, the national immunisation schedule begins at birth with BCG (tuberculosis), hepatitis B, and oral polio vaccine. Further doses are given at 6, 10, and 14 weeks, and then at scheduled intervals throughout infancy and childhood. Your doctor will provide the specific schedule relevant to your baby.',
        },
        {
          'title': 'What to Expect After Vaccination',
          'body':
              'Common reactions include mild fever, fussiness, and redness or swelling at the injection site. These are normal signs that the immune system is responding and usually resolve within 48 hours. You can give paracetamol (as advised by your doctor) to help with fever and discomfort.',
        },
        {
          'title': 'Keeping Records',
          'body':
              'Keep your baby\'s vaccination record card safe and bring it to every appointment. This ensures your healthcare team can track which vaccinations have been given and when the next ones are due. If you miss a scheduled vaccination, contact your doctor to arrange a catch-up.',
        },
        {
          'title': 'Common Concerns',
          'body':
              'Vaccines used in national immunisation programmes are thoroughly tested and continuously monitored for safety. Serious side effects are extremely rare. The diseases that vaccines prevent are far more dangerous than any side effects of the vaccines themselves. If you have concerns, discuss them with your doctor.',
        },
      ],
      sectionsKn: [],
    ),

    // ── Pregnancy Complications ────────────────────────────────────────────

    'preterm-labour': const EducationTopicData(
      titleEn: 'Preterm Labour',
      sectionsEn: [
        {
          'title': 'What Is Preterm Labour?',
          'body':
              'Preterm labour is labour that begins before 37 weeks of pregnancy. It can lead to premature birth, which is associated with health challenges for the baby, including breathing difficulties, feeding problems, and a need for specialised neonatal care.',
        },
        {
          'title': 'Warning Signs',
          'body':
              'Signs of preterm labour include regular contractions before 37 weeks, a feeling of pressure in the pelvis, lower back pain that does not go away, a change in vaginal discharge (especially if watery, bloody, or mucus-like), and abdominal cramps with or without diarrhoea.',
        },
        {
          'title': 'Risk Factors',
          'body':
              'Risk factors include a previous preterm birth, multiple pregnancy (twins or more), cervical weakness, infections (especially urinary tract infections), smoking, and certain uterine abnormalities. However, preterm labour can occur without any identifiable risk factor.',
        },
        {
          'title': 'Treatment',
          'body':
              'If preterm labour is suspected, you will be assessed in hospital. Treatment may include medications to slow or stop contractions (tocolytics), corticosteroid injections to help mature the baby\'s lungs if delivery appears likely, and magnesium sulphate to protect the baby\'s brain if delivery is expected before 32 weeks.',
        },
        {
          'title': 'Neonatal Care',
          'body':
              'If your baby is born prematurely, they may need care in a neonatal intensive care unit (NICU) or special care baby unit. The level of support depends on how early the baby is born and their condition. The neonatal team will keep you informed and involved in your baby\'s care.',
        },
      ],
      sectionsKn: [],
    ),

    'obstetric-cholestasis': const EducationTopicData(
      titleEn: 'Obstetric Cholestasis (ICP)',
      sectionsEn: [
        {
          'title': 'What Is Obstetric Cholestasis?',
          'body':
              'Obstetric cholestasis, also known as intrahepatic cholestasis of pregnancy (ICP), is a liver condition that occurs in pregnancy. It causes bile acids to build up in the blood, leading to intense itching, typically on the palms of the hands and soles of the feet, often worse at night.',
        },
        {
          'title': 'Diagnosis',
          'body':
              'Diagnosis is based on symptoms and blood tests showing raised bile acid levels and sometimes abnormal liver function tests. Other causes of itching and liver problems are excluded first. Symptoms usually begin in the third trimester.',
        },
        {
          'title': 'Risks',
          'body':
              'ICP is associated with an increased risk of preterm birth and, rarely, stillbirth. The risk increases with higher bile acid levels. Regular monitoring of bile acid levels and liver function, along with fetal monitoring, is important throughout the remainder of the pregnancy.',
        },
        {
          'title': 'Treatment and Delivery',
          'body':
              'Ursodeoxycholic acid (UDCA) may be prescribed to lower bile acid levels and reduce itching. Emollients and antihistamines can help manage the itch. Early delivery, usually between 37 and 38 weeks, is often recommended to reduce the risk of complications. The condition resolves after delivery.',
        },
      ],
      sectionsKn: [],
    ),

    'group-b-strep': const EducationTopicData(
      titleEn: 'Group B Streptococcus (GBS) in Pregnancy',
      sectionsEn: [
        {
          'title': 'What Is GBS?',
          'body':
              'Group B streptococcus (GBS) is a common bacterium that lives harmlessly in the vagina and bowel of about 20 to 30 per cent of women. It usually causes no symptoms and is not a sexually transmitted infection. However, it can occasionally be passed to the baby during labour and delivery.',
        },
        {
          'title': 'Risk to the Baby',
          'body':
              'In rare cases, GBS can cause serious infection in newborns, including sepsis, pneumonia, and meningitis. Early-onset GBS disease occurs within the first seven days of life, most commonly within 24 hours of birth. Late-onset disease can occur up to three months after birth.',
        },
        {
          'title': 'Screening and Detection',
          'body':
              'GBS may be detected incidentally in urine tests or vaginal swabs during pregnancy. Some countries offer routine screening with a vaginal and rectal swab at 35 to 37 weeks. Discuss with your doctor whether GBS screening is recommended for you.',
        },
        {
          'title': 'Prevention During Labour',
          'body':
              'If you are known to carry GBS, intravenous antibiotics (usually penicillin) are given during labour to reduce the risk of transmission to the baby. Antibiotics are most effective when given at least four hours before delivery. Your baby will be observed closely after birth for any signs of infection.',
        },
      ],
      sectionsKn: [],
    ),

    'cord-prolapse': const EducationTopicData(
      titleEn: 'Umbilical Cord Prolapse',
      sectionsEn: [
        {
          'title': 'What Is Cord Prolapse?',
          'body':
              'Umbilical cord prolapse occurs when the umbilical cord slips down through the cervix ahead of or alongside the baby after the membranes have ruptured. This is an obstetric emergency because the cord can become compressed, cutting off the baby\'s blood and oxygen supply.',
        },
        {
          'title': 'Risk Factors',
          'body':
              'Risk factors include the baby being in a breech or transverse position, premature rupture of membranes, polyhydramnios (excess amniotic fluid), a long umbilical cord, and multiple pregnancies. However, it can occur without any known risk factor.',
        },
        {
          'title': 'What to Do',
          'body':
              'If you feel or see the cord in your vagina after your waters break, call an ambulance immediately. Get on your hands and knees with your chest low and your bottom raised to reduce pressure on the cord. Do not try to push the cord back in. This position helps maintain blood flow to the baby until emergency delivery.',
        },
        {
          'title': 'Emergency Delivery',
          'body':
              'Cord prolapse usually requires an emergency caesarean section to deliver the baby as quickly as possible. If detected in hospital, the medical team will act rapidly. Outcomes are generally good when the condition is recognised and treated promptly.',
        },
      ],
      sectionsKn: [],
    ),

    'postpartum-haemorrhage': const EducationTopicData(
      titleEn: 'Postpartum Haemorrhage',
      sectionsEn: [
        {
          'title': 'What Is Postpartum Haemorrhage?',
          'body':
              'Postpartum haemorrhage (PPH) is excessive bleeding after delivery—defined as more than 500 millilitres after a vaginal birth or more than 1000 millilitres after a caesarean section. It can occur immediately after delivery (primary PPH) or between 24 hours and 12 weeks later (secondary PPH).',
        },
        {
          'title': 'Causes',
          'body':
              'The most common cause is uterine atony—when the uterus does not contract effectively after delivery. Other causes include retained placental tissue, tears of the birth canal, and blood clotting disorders. Active management of the third stage of labour (with oxytocin) reduces the risk.',
        },
        {
          'title': 'Treatment',
          'body':
              'Treatment depends on the cause and severity. It may include uterine massage, medications to stimulate uterine contractions, intravenous fluids, blood transfusion, removal of retained tissue, and repair of tears. In severe cases, surgical intervention may be needed.',
        },
        {
          'title': 'Risk Factors',
          'body':
              'Risk factors include a previous PPH, prolonged labour, multiple pregnancy, polyhydramnios, large baby, pre-eclampsia, and certain medications. Your healthcare team will assess your risk and take preventive measures during delivery.',
        },
        {
          'title': 'Warning Signs After Discharge',
          'body':
              'After going home, seek urgent medical attention if you experience heavy bleeding (soaking more than one pad per hour), passing large blood clots, feeling dizzy, faint, or having a racing heart, or if bleeding that had been decreasing suddenly increases. These may indicate secondary PPH.',
        },
      ],
      sectionsKn: [],
    ),

    'venous-thromboembolism-pregnancy': const EducationTopicData(
      titleEn: 'Blood Clots in Pregnancy (VTE)',
      sectionsEn: [
        {
          'title': 'What Is VTE?',
          'body':
              'Venous thromboembolism (VTE) includes deep vein thrombosis (DVT)—a blood clot in a deep vein, usually in the leg—and pulmonary embolism (PE)—when a clot travels to the lungs. Pregnancy increases the risk of VTE because of changes in blood clotting, blood flow, and blood vessels.',
        },
        {
          'title': 'Symptoms to Watch For',
          'body':
              'DVT symptoms include pain, swelling, redness, and warmth in one leg—usually the calf or thigh. PE symptoms include sudden shortness of breath, chest pain (especially when breathing in), and coughing (sometimes with blood). Seek emergency medical attention if you experience these symptoms.',
        },
        {
          'title': 'Risk Factors',
          'body':
              'Risk factors include previous VTE, family history of blood clots, obesity, immobility (including long-haul travel), caesarean section, pre-eclampsia, and certain inherited blood clotting conditions. Your healthcare team will assess your risk during pregnancy.',
        },
        {
          'title': 'Prevention and Treatment',
          'body':
              'If you are at increased risk, you may be prescribed low-molecular-weight heparin injections and compression stockings. Staying active, keeping well hydrated, and avoiding prolonged immobility also help. If a blood clot is diagnosed, anticoagulant treatment is given and is safe during pregnancy and breastfeeding.',
        },
      ],
      sectionsKn: [],
    ),

    'amniotic-fluid-disorders': const EducationTopicData(
      titleEn: 'Amniotic Fluid Disorders',
      sectionsEn: [
        {
          'title': 'Normal Amniotic Fluid',
          'body':
              'Amniotic fluid surrounds and protects the baby in the womb. It allows the baby to move and develop, maintains temperature, and cushions against injury. The volume increases throughout pregnancy, reaching its peak around 36 weeks, then gradually decreases.',
        },
        {
          'title': 'Polyhydramnios',
          'body':
              'Polyhydramnios means there is too much amniotic fluid. It can cause the uterus to become very large, leading to discomfort, breathlessness, and premature contractions. Causes include gestational diabetes, fetal swallowing problems, or infections, though often no cause is found. Ultrasound monitors the fluid level.',
        },
        {
          'title': 'Oligohydramnios',
          'body':
              'Oligohydramnios means there is too little amniotic fluid. It can be associated with the baby\'s kidneys not producing enough urine, ruptured membranes, placental problems, or certain medications. Low fluid levels can restrict the baby\'s movement and growth and may require closer monitoring or earlier delivery.',
        },
        {
          'title': 'Monitoring and Management',
          'body':
              'Both conditions are usually detected on ultrasound. Management depends on the cause, severity, and stage of pregnancy. It may include treating underlying conditions, amnioreduction (draining excess fluid), increased monitoring of the baby, or planning delivery at the appropriate time.',
        },
      ],
      sectionsKn: [],
    ),
  };
}

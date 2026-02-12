const admin = require('firebase-admin');
const serviceAccount = require('../serviceAccountKey.json');

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
});

const db = admin.firestore();

const modules = [
  {
    id: 'diabetes',
    name: 'Diabetes Management',
    description: 'Learn about managing diabetes effectively',
    icon: 'local_hospital',
    clinicId: 'clinic_001',
    content: {
      sections: [
        {
          title: 'What is Diabetes?',
          body: 'Diabetes is a chronic condition that affects how your body turns food into energy. Your body either doesn\'t make enough insulin or can\'t use the insulin it makes as well as it should. When there isn\'t enough insulin or cells stop responding to insulin, too much blood sugar stays in your bloodstream.',
          order: 1,
        },
        {
          title: 'Types of Diabetes',
          body: 'Type 1 Diabetes: Your body doesn\'t make insulin. Your immune system attacks and destroys the cells in your pancreas that make insulin.\n\nType 2 Diabetes: Your body doesn\'t use insulin well and can\'t keep blood sugar at normal levels. It\'s the most common type.\n\nGestational Diabetes: Develops in pregnant women who have never had diabetes. It usually goes away after the baby is born.',
          order: 2,
        },
        {
          title: 'Managing Your Blood Sugar',
          body: 'Monitor your blood sugar levels regularly as advised by your doctor. Keep a log of your readings. Eat balanced meals at regular times. Take medications as prescribed. Regular physical activity helps your body use insulin better.',
          order: 3,
        },
        {
          title: 'Diet Tips',
          body: 'Choose whole grains over refined grains. Eat plenty of vegetables and fruits. Limit sugary drinks and sweets. Control portion sizes. Include lean protein in your meals. Avoid skipping meals, especially if you take diabetes medications.',
          order: 4,
        },
        {
          title: 'When to See Your Doctor',
          body: 'Contact your doctor if you experience: blood sugar levels consistently above or below your target range, frequent urination, excessive thirst, unexplained weight loss, blurred vision, slow-healing wounds, or numbness in hands or feet.',
          order: 5,
        },
      ],
    },
  },
  {
    id: 'hypertension',
    name: 'Hypertension Care',
    description: 'Understanding and managing high blood pressure',
    icon: 'favorite',
    clinicId: 'clinic_001',
    content: {
      sections: [
        {
          title: 'What is Hypertension?',
          body: 'Hypertension, or high blood pressure, is when the force of blood pushing against your artery walls is consistently too high. Normal blood pressure is below 120/80 mmHg. Hypertension is often called the "silent killer" because it usually has no symptoms but can lead to serious health problems.',
          order: 1,
        },
        {
          title: 'Understanding Your Numbers',
          body: 'Blood pressure is measured with two numbers:\n\nSystolic (top number): Pressure when your heart beats.\nDiastolic (bottom number): Pressure when your heart rests between beats.\n\nNormal: Less than 120/80\nElevated: 120-129 / Less than 80\nHigh (Stage 1): 130-139 / 80-89\nHigh (Stage 2): 140 or higher / 90 or higher',
          order: 2,
        },
        {
          title: 'Lifestyle Changes',
          body: 'Reduce salt intake to less than 5g per day. Maintain a healthy weight. Exercise regularly (at least 30 minutes most days). Limit alcohol consumption. Quit smoking. Manage stress through relaxation techniques, yoga, or meditation.',
          order: 3,
        },
        {
          title: 'Diet Recommendations',
          body: 'Follow a heart-healthy diet rich in fruits, vegetables, and whole grains. Reduce saturated fats. Eat potassium-rich foods like bananas, spinach, and sweet potatoes. Limit processed and packaged foods which are high in sodium.',
          order: 4,
        },
        {
          title: 'Medication & Monitoring',
          body: 'Take your blood pressure medications at the same time every day. Never skip doses or stop medication without consulting your doctor. Monitor your blood pressure at home regularly. Keep a record to share with your doctor at each visit.',
          order: 5,
        },
      ],
    },
  },
  {
    id: 'thyroid',
    name: 'Thyroid Disorders',
    description: 'Information about thyroid conditions and care',
    icon: 'health_and_safety',
    clinicId: 'clinic_001',
    content: {
      sections: [
        {
          title: 'What is the Thyroid?',
          body: 'The thyroid is a small butterfly-shaped gland in the front of your neck. It produces hormones that control many activities in your body, including how fast you burn calories and how fast your heart beats. Thyroid disorders can cause it to make either too much or too little hormone.',
          order: 1,
        },
        {
          title: 'Hypothyroidism (Underactive Thyroid)',
          body: 'When your thyroid doesn\'t produce enough hormones. Symptoms include: fatigue, weight gain, feeling cold, constipation, dry skin, hair loss, depression, and muscle weakness. It is treated with daily thyroid hormone medication.',
          order: 2,
        },
        {
          title: 'Hyperthyroidism (Overactive Thyroid)',
          body: 'When your thyroid produces too much hormone. Symptoms include: weight loss, rapid heartbeat, anxiety, tremors, sweating, difficulty sleeping, and frequent bowel movements. Treatment options include medication, radioactive iodine, or surgery.',
          order: 3,
        },
        {
          title: 'Living with Thyroid Disorders',
          body: 'Take your medication at the same time every day, preferably on an empty stomach. Get regular blood tests to check your thyroid levels. Inform your doctor about all other medications you take. Maintain a balanced diet and regular exercise routine.',
          order: 4,
        },
        {
          title: 'When to Seek Help',
          body: 'Contact your doctor if you notice: a lump or swelling in your neck, significant unexplained weight changes, persistent fatigue, heart palpitations, or if your symptoms worsen despite treatment.',
          order: 5,
        },
      ],
    },
  },
  {
    id: 'heart',
    name: 'Heart Health',
    description: 'Keeping your heart healthy and strong',
    icon: 'monitor_heart',
    clinicId: 'clinic_001',
    content: {
      sections: [
        {
          title: 'Understanding Heart Disease',
          body: 'Heart disease refers to several types of conditions affecting the heart. The most common type is coronary artery disease, where plaque builds up in the arteries supplying blood to the heart. This can lead to heart attacks, heart failure, and other complications.',
          order: 1,
        },
        {
          title: 'Risk Factors',
          body: 'Major risk factors include: high blood pressure, high cholesterol, diabetes, smoking, obesity, physical inactivity, unhealthy diet, excessive alcohol use, stress, and family history of heart disease. Many of these can be managed through lifestyle changes.',
          order: 2,
        },
        {
          title: 'Heart-Healthy Diet',
          body: 'Eat plenty of fruits, vegetables, and whole grains. Choose lean proteins like fish, poultry, and legumes. Limit saturated fats, trans fats, and cholesterol. Reduce salt and added sugars. Include omega-3 fatty acids from fish, walnuts, and flaxseeds.',
          order: 3,
        },
        {
          title: 'Exercise for Heart Health',
          body: 'Aim for at least 150 minutes of moderate aerobic activity per week (like brisk walking). Include strength training exercises 2 or more days per week. Start slowly if you\'re new to exercise. Always consult your doctor before starting a new exercise program.',
          order: 4,
        },
        {
          title: 'Warning Signs of Heart Attack',
          body: 'Seek emergency help immediately if you experience: chest pain or discomfort, pain spreading to shoulders, neck, or arms, shortness of breath, cold sweat, nausea, or lightheadedness. Remember: every minute matters. Call emergency services immediately.',
          order: 5,
        },
      ],
    },
  },
  {
    id: 'kidney',
    name: 'Kidney Disease',
    description: 'Understanding and managing kidney health',
    icon: 'water_drop',
    clinicId: 'clinic_001',
    content: {
      sections: [
        {
          title: 'What Do Your Kidneys Do?',
          body: 'Your kidneys are two bean-shaped organs, each about the size of a fist. They filter about 200 liters of blood daily, removing waste and extra water to make urine. They also help control blood pressure, make red blood cells, and keep your bones healthy.',
          order: 1,
        },
        {
          title: 'Chronic Kidney Disease (CKD)',
          body: 'CKD means your kidneys are damaged and losing their ability to filter blood properly. Diabetes and high blood pressure are the leading causes. Early CKD often has no symptoms. As it progresses, you may experience swelling, fatigue, changes in urination, and nausea.',
          order: 2,
        },
        {
          title: 'Protecting Your Kidneys',
          body: 'Control your blood sugar if you have diabetes. Maintain healthy blood pressure (below 130/80). Take medications as prescribed. Stay hydrated but don\'t overdo fluids. Limit salt intake. Avoid overuse of painkillers (NSAIDs). Don\'t smoke.',
          order: 3,
        },
        {
          title: 'Diet for Kidney Health',
          body: 'Limit sodium (salt) intake. Monitor protein consumption as advised by your doctor. Be cautious with potassium and phosphorus-rich foods if your kidneys are significantly impaired. Stay well-hydrated with water. Avoid processed and packaged foods.',
          order: 4,
        },
        {
          title: 'Regular Check-ups',
          body: 'Get regular kidney function tests, especially if you have diabetes or high blood pressure. Blood tests (creatinine, GFR) and urine tests (albumin) help monitor kidney health. Early detection and treatment can slow the progression of kidney disease significantly.',
          order: 5,
        },
      ],
    },
  },
];

async function importModules() {
  console.log('Starting module import...');

  for (const module of modules) {
    const { id, ...data } = module;
    await db.collection('modules').doc(id).set(data);
    console.log(`Imported: ${module.name}`);
  }

  console.log('All modules imported successfully!');
  process.exit(0);
}

importModules().catch((error) => {
  console.error('Error importing modules:', error);
  process.exit(1);
});

import 'package:flutter_counter/data/models/sunnah.dart';

// TODO: search valid reference data
final sunnahData = List<Sunnah>.from([
  // Worship
  Sunnah()
    ..title = 'Pray Sunnah'
    ..category = SunnahCategory.worship
    ..description = 'Pray 2 rakaat before Fajr'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Tahajjud'
    ..category = SunnahCategory.worship
    ..description = 'Pray during the last third of the night'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Dhuha Prayer'
    ..category = SunnahCategory.worship
    ..description = 'Pray 2 to 12 rakaat during the morning'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  // Etiquette
  Sunnah()
    ..title = 'Eat with Right Hand'
    ..category = SunnahCategory.etiquette
    ..description = 'Use the right hand to eat'
    ..defaultTarget = 3
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Say Bismillah Before Eating'
    ..category = SunnahCategory.etiquette
    ..description = 'Begin eating by saying "Bismillah"'
    ..defaultTarget = 3
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Greet with Salam'
    ..category = SunnahCategory.etiquette
    ..description = 'Say "Assalamu Alaikum" when meeting others'
    ..defaultTarget = 5
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  // Daily Life
  Sunnah()
    ..title = 'Sleep on Right Side'
    ..category = SunnahCategory.dailylife
    ..description = 'Lie on the right side while sleeping'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Drink Water in Three Sips'
    ..category = SunnahCategory.dailylife
    ..description = 'Drink water in three separate sips'
    ..defaultTarget = 5
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Cover Utensils at Night'
    ..category = SunnahCategory.dailylife
    ..description = 'Cover food and utensils at night'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  // Family
  Sunnah()
    ..title = 'Spend Quality Time with Family'
    ..category = SunnahCategory.family
    ..description = 'Spend time teaching, guiding, and sharing with family'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Be Gentle to Children'
    ..category = SunnahCategory.family
    ..description = 'Treat children with love and patience'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Help with Household Chores'
    ..category = SunnahCategory.family
    ..description = 'Assist family members in household tasks'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  // Health
  Sunnah()
    ..title = 'Brush Teeth'
    ..category = SunnahCategory.health
    ..description = 'Brush teeth with miswak'
    ..defaultTarget = 2
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Avoid Overeating'
    ..category = SunnahCategory.health
    ..description = 'Stop eating before feeling full'
    ..defaultTarget = 3
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Maintain Cleanliness'
    ..category = SunnahCategory.health
    ..description = 'Stay clean and encourage hygiene'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  // Dealings
  Sunnah()
    ..title = 'Be Honest in Trade'
    ..category = SunnahCategory.dealings
    ..description = 'Ensure honesty and transparency in business'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Fulfill Promises'
    ..category = SunnahCategory.dealings
    ..description = 'Honor commitments and agreements'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Be Just in Judgments'
    ..category = SunnahCategory.dealings
    ..description = 'Practice justice when making decisions'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',

  // Social
  Sunnah()
    ..title = 'Visit the Sick'
    ..category = SunnahCategory.social
    ..description = 'Visit and comfort those who are unwell'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Help Neighbors'
    ..category = SunnahCategory.social
    ..description = 'Offer assistance to neighbors in need'
    ..defaultTarget = 1
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  Sunnah()
    ..title = 'Smile to Others'
    ..category = SunnahCategory.social
    ..description = 'Smile as an act of charity'
    ..defaultTarget = 5
    ..reference = '''
وعنها عن النبي صلى الله عليه وسلم قال‏: ‏ ‏ "‏ركعتا الفجر خير من الدنيا وما فيها‏"‏ ‏(‏‏(‏رواه مسلم‏)‏‏)‏‏.‏ وفي رواية لهما لأحب إلي من الدنيا جميعًا‏.‏

'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
]);

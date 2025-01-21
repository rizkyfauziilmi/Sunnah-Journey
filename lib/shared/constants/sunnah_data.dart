import 'package:flutter_counter/data/models/sunnah.dart';

// TODO add more sunnah
final sunnahData = [
  {
    'title': 'Pray Sunnah',
    'category': SunnahCategory.worship,
    'description': 'Pray 2 rakaat before Fajr',
    'defaultTarget': 1,
    'reference': '''
'Aishah (May Allah be pleased with her) reported: The Prophet (ﷺ) said, "The two Rak'ah before the dawn (Fajr) prayer are better than this world and all it contains." [Muslim]

Another narration goes: "The two Rak'ah before the dawn (Fajr) prayer are dearer to me than the whole world."

Riyad as-Salihin 1102
''',
  },
  {
    'title': 'Tahajjud',
    'category': SunnahCategory.worship,
    'description': 'Pray during the last third of the night',
    'defaultTarget': 1,
    'reference': '''
Narrated Abu Huraira: Allah's Messenger (ﷺ) (p.b.u.h) said, "Our Lord, the Blessed, the Superior, comes every night down on the nearest Heaven to us when the last third of the night remains, saying: "Is there anyone to invoke Me, so that I may respond to invocation? Is there anyone to ask Me, so that I may grant him his request? Is there anyone seeking My forgiveness, so that I may forgive him?"

Sahih al-Bukhari 1145
''',
  },
  {
    'title': 'Dhuha Prayer',
    'category': SunnahCategory.worship,
    'description': 'Pray 2 to 12 rakaat during the morning',
    'defaultTarget': 1,
    'reference': '''
Abu Dharr (May Allah be pleased with him)reported: The Prophet (ﷺ) said, "In the morning, charity is due on every joint bone of the body of everyone of you. Every utterance of Allah's Glorification (i.e., saying Subhan Allah) is an act of charity, and every utterance of His Praise (i.e., saying Al-hamdu lillah) is an act of charity and every utterance of declaration of His Greatness (i.e., saying La ilaha illAllah) is an act of charity; and enjoining M'aruf (good) is an act of charity, and forbidding Munkar (evil) is an act of charity, and two Rak'ah Duha prayers which one performs in the forenoon is equal to all this (in reward)." [Muslim].

Riyad as-Salihin 1140
''',
  },
  {
    'title': 'Eat with Right Hand',
    'category': SunnahCategory.etiquette,
    'description': 'Use the right hand to eat',
    'defaultTarget': 3,
    'reference': '''
It was narrated from Abu Hurairah that the Prophet (ﷺ) said: “Let one of you eat with his right hand and drink with his right hand, and take with his right hand and give with his right hand, for Satan eats with his left hand, drinks with his left hand, gives with his left hand and takes with his left hand.”

Sunan Ibn Majah 3266
''',
  },
  {
    'title': 'Say Bismillah Before Eating',
    'category': SunnahCategory.etiquette,
    'description': 'Begin eating by saying "Bismillah"',
    'defaultTarget': 3,
    'reference': '''
It was narrated that ‘Aishah said: “The Messenger of Allah (ﷺ) was eating food with six of his Companions when a Bedouin came and ate it all in two bites. The Messenger of Allah (ﷺ) said: ‘If he had said Bismillah, it would have sufficed you (all). When any one of you eats food, let him say Bismillah, and if he forgets to say Bismillah at the beginning, let him say Bismillah fi awwalihi wa akhirih (In the Name of Allah at the beginning and at the end).’”

Sunan Ibn Majah 3264
''',
  },
  {
    'title': 'Greet with Salam',
    'category': SunnahCategory.etiquette,
    'description': 'Say "Assalamu Alaikum" when meeting others',
    'defaultTarget': 5,
    'reference': '''
Jabir said, "When you come in to your family, greet them with a greeting from Allah which is blessed and good." He added, "I only think that it is what is meant by His words, 'When you are greeted with a greeting, greet with one better than it or return it.' (4: 86)"

Al-Adab Al-Mufrad 1095
''',
  },
  {
    'title': 'Sleep on Right Side',
    'category': SunnahCategory.dailylife,
    'description': 'Lie on the right side while sleeping',
    'defaultTarget': 1,
    'reference': '''
Abu Hurayra said, "The Messenger of Allah, may Allah bless him and grant him peace, said, 'When one of you goes to bed, he should undo the inside of his lower garment and dust the bed with it. He does not know what has come on his bed since he left it. He should lie down on his right side and say, 'In Your Name I have laid down on my side. If You take my soul, then have mercy on it. If You release it, then preserve it in the manner in which You preserve the men of right action."

Al-Adab Al-Mufrad
'''
  },
  {
    'title': 'Drink Water in Three Sips',
    'category': SunnahCategory.dailylife,
    'description': 'Drink water in three separate sips',
    'defaultTarget': 5,
    'reference': '''
Anas reported that Allah's Messenger (ﷺ) used to breathe three times in the course of a drink (i. e. he drank in three gulps).

Sahih Muslim 2028a
''',
  },
  {
    'title': 'Cover Utensils at Night',
    'category': SunnahCategory.dailylife,
    'description': 'Cover food and utensils at night',
    'defaultTarget': 1,
    'reference': '''
Narrated Jabir bin `Abdullah: Allah's Messenger (ﷺ) said, "When night falls (or when it is evening), stop your children from going out, for the devils spread out at that time. But when an hour of the night has passed, release them and close the doors and mention Allah's Name, for Satan does not open a closed door. Tie the mouth of your waterskin and mention Allah's Name; cover your containers and utensils and mention Allah's Name. Cover them even by placing something across it, and extinguish your lamps. "

Sahih al-Bukhari 5623
''',
  },
  {
    'title': 'Spend Quality Time with Family',
    'category': SunnahCategory.family,
    'description': 'Spend time teaching, guiding, and sharing with family',
    'defaultTarget': 1,
    'reference': '''
Narrated 'Aishah: that the Messenger of Allah (ﷺ) said: "The best of you is the best to his wives, and I am the best of you to my wives, and when your companion dies, leave him alone."

Jami` at-Tirmidhi 3895
''',
  },
  {
    'title': 'Help with Household Chores',
    'category': SunnahCategory.family,
    'description': 'Assist family members in household tasks',
    'defaultTarget': 1,
    'reference': '''
Narrated Al-Aswad bin Yazid: I asked `Aisha "What did the Prophet (ﷺ) use to do at home?" She said, "He used to work for his family, and when he heard the Adhan (call for the prayer), he would go out."

Sahih al-Bukhari 5363
''',
  },
  {
    'title': 'Brush Teeth',
    'category': SunnahCategory.health,
    'description': 'Brush teeth with miswak',
    'defaultTarget': 2,
    'reference': '''
Narrated Abu Huraira: Allah's Messenger (ﷺ) said, "If I had not found it hard for my followers or the people, I would have ordered them to clean their teeth with Siwak for every prayer."

Sahih al-Bukhari 887
''',
  },
  {
    'title': 'Avoid Overeating',
    'category': SunnahCategory.health,
    'description': 'Stop eating before feeling full',
    'defaultTarget': 3,
    'reference': '''
Miqdam bin Madikarib said: “I heard the Messenger of Allah (ﷺ) say: ‘A human being fills no worse vessel than his stomach. It is sufficient for a human being to eat a few mouthfuls to keep his spine straight. But if he must (fill it), then one third of food, one third for drink and one third for air.’”

Sunan Ibn Majah 3349
''',
  },
  {
    'title': 'Maintain Cleanliness',
    'category': SunnahCategory.health,
    'description': 'Stay clean and encourage hygiene',
    'defaultTarget': 1,
    'reference': '''
Abu Malik at-Ash'ari reported: The Messenger of Allah (ﷺ) said: Cleanliness is half of faith and al-Hamdu Lillah (all praise and gratitude is for Allah alone) fills the scale, and Subhan Allah (Glory be to Allah) and al-Hamdu Lillah fill up what is between the heavens and the earth, and prayer is a light, and charity is proof (of one's faith) and endurance is a brightness and the Holy Qur'an is a proof on your behalf or against you. All men go out early in the morning and sell themselves, thereby setting themselves free or destroying themselves.

Sahih Muslim 223
''',
  },
  {
    'title': 'Be Honest in Trade',
    'category': SunnahCategory.dealings,
    'description': 'Ensure honesty and transparency in business',
    'defaultTarget': 1,
    'reference': '''
Abu Sa'eed narrated that the Prophet (ﷺ) said: "The truthful, trustworthy merchant is with the Prophets, the truthful, and the martyrs."

[Abu 'Eisa said: ] This Hadith is Hasan, we do not know it except from this route, a narration of Ath-Thawri from Abu Hamzah. Abu Hamzah's name is 'Abdullah bin Jabir, and he is a Shaikh from Al-Basrah.

Jami` at-Tirmidhi 1209
''',
  },
  {
    'title': 'Fulfill Promises',
    'category': SunnahCategory.dealings,
    'description': 'Honor commitments and agreements',
    'defaultTarget': 1,
    'reference': '''
Narrated Abu Huraira: Allah's Messenger (ﷺ) said, "The signs of a hypocrite are three: Whenever he speaks, he tells a lie; and whenever he promises, he breaks his promise; and whenever he is entrusted, he betrays (proves to be dishonest)".

Sahih al-Bukhari 6095
''',
  },
  {
    'title': 'Be Just in Judgments',
    'category': SunnahCategory.dealings,
    'description': 'Practice justice when making decisions',
    'defaultTarget': 1,
    'reference': '''
'Amr b. al-'As reported that he heard Allah's Messenger (ﷺ) as saying: When a judge gives a decision, having tried his best to decide correctly and is right, there are two rewards for him; and if he gave a judgment after having tried his best (to arrive at a correct decision) but erred, there is one reward for him.

Sahih Muslim 1716a
''',
  },
  {
    'title': 'Visit the Sick',
    'category': SunnahCategory.social,
    'description': 'Visit and comfort those who are unwell',
    'defaultTarget': 1,
    'reference': '''
'Ali bin Abu Talib (May Allah be pleased with him) reported: I heard the Messenger of Allah (ﷺ) saying, "When a Muslim visits a sick Muslim at dawn, seventy thousand angels keep on praying for him till dusk. If he visits him in the evening, seventy thousand angels keep on praying for him till the morning; and he will have (his share of) reaped fruits in Jannah." [At- Tirmidhi].

Riyad as-Salihin 899
''',
  },
  {
    'title': 'Help Neighbors',
    'category': SunnahCategory.social,
    'description': 'Offer assistance to neighbors in need',
    'defaultTarget': 1,
    'reference': '''
'A'isha reported that the Prophet, may Allah bless him and grant him peace, said, "Jibril, may Allah bless him and grant him peace, kept on recommending that I treat neighbours well until I thought that he would order me to treat them as my heirs."

Al-Adab Al-Mufrad 101
''',
  },
  {
    'title': 'Smile to Others',
    'category': SunnahCategory.social,
    'description': 'Smile as an act of charity',
    'defaultTarget': 5,
    'reference': '''
Abu Dharr narrated that the Messenger of Allah said: "Your smiling in the face of your brother is charity, commanding good and forbidding evil is charity, your giving directions to a man lost in the land is charity for you. Your seeing for a man with bad sight is a charity for you, your removal of a rock, a thorn or a bone from the road is charity for you. Your pouring what remains from your bucket into the bucket of your brother is charity for you."

Jami` at-Tirmidhi 1956
''',
  },
];

final sunnahList = sunnahData
    .map(
      (sunnah) => Sunnah()
        ..title = sunnah['title'] as String
        ..category = sunnah['category'] as SunnahCategory
        ..description = sunnah['description'] as String
        ..defaultTarget = sunnah['defaultTarget'] as int
        ..reference = sunnah['reference'] as String,
    )
    .toList();

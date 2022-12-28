class Word {
  final String wordName;
  final String wordClass;
  final String transcription;
  final String translation;
  final String pronunciationButtonUrl;
  final DateTime date;

  Word(
      {required this.wordName,
      required this.wordClass,
      required this.transcription,
      required this.translation,
      required this.pronunciationButtonUrl,
      required this.date});
}

final words = <Word>[
  Word(
    wordName: "unreasonably",
    transcription: "/ʌnˈriː.zən.ə.bli/",
    translation: "in a way that is not fair or acceptable",
    date: DateTime.now(),
    wordClass: 'adverb',
    pronunciationButtonUrl: '',
  ),
  Word(
    wordName: "satisfactory",
    transcription: "/ˌsæt.ɪsˈfæk.tər.i/",
    translation: "good or good enough for a particular need or purpose",
    date: DateTime.parse('2012-02-27 13:27:00'),
    wordClass: 'adjective',
    pronunciationButtonUrl: '',
  ),
  Word(
    wordName: "assimilation",
    transcription: "/əˌsɪm.ɪˈleɪ.ʃən/",
    translation:
        "the process of becoming a part, or making someone become a part, of a group, country, society, etc.",
    date: DateTime.parse('2012-02-27 13:27:00'),
    wordClass: 'noun',
    pronunciationButtonUrl: '',
  ),
  Word(
    wordName: "honour",
    transcription: "/ˈɒn.ər/",
    translation: "a quality that combines respect, being proud, and honesty",
    date: DateTime.parse('2012-05-27 13:27:00'),
    wordClass: 'noun',
    pronunciationButtonUrl: '',
  ),
  Word(
    wordName: "biased",
    transcription: "/ˈbaɪ.əst/",
    translation:
        "showing an unreasonable like or dislike for a person based on personal opinions",
    date: DateTime.parse('2012-05-27 13:27:00'),
    wordClass: 'adjective',
    pronunciationButtonUrl: '',
  ),
  Word(
    wordName: "commit",
    transcription: "/kəˈmɪt/",
    translation:
        "to do something illegal or something that is considered wrong",
    date: DateTime.parse('2012-05-27 13:27:00'),
    wordClass: 'verb',
    pronunciationButtonUrl: '',
  ),
];

class LongFixModel {
  final String category;
  final String time;
  final String desc;

  LongFixModel({
    required this.category,
    required this.time,
    required this.desc,
  });

  Map<String, dynamic> toJson() {
    return {'category': this.category, 'time': this.time, 'desc': this.desc};
  }

  factory LongFixModel.fromJson(Map<String, dynamic> map) {
    return LongFixModel(
      category: map['category'],
      time: map['time'],
      desc: map['desc'],
    );
  }
}

class TextModel {
  final String quickfix;
  final List<LongFixModel> longfix;

  TextModel({required this.quickfix, required this.longfix});

  Map<String, dynamic> toJson() {
    return {
      'quickFix': this.quickfix,
      'longFix': this.longfix.map((element) => element.toJson()).toList(),
    };
  }

  factory TextModel.fromJson(Map<String, dynamic> map) {
    final longfixdata = ['longFix'] as List<Map<String, dynamic>>;
    final List<LongFixModel> data = longfixdata
        .map((element) => LongFixModel.fromJson(element))
        .toList();

    return TextModel(quickfix: map['quickFix'], longfix: data);
  }
}

class GlossaryModel {
  final String terms;
  final String hyperLink;
  final String image;
  final String video;
  final String category;
  final TextModel text;

  GlossaryModel({
    required this.terms,
    required this.hyperLink,
    required this.image,
    required this.video,
    required this.category,
    required this.text,
  });
  Map<String, dynamic> toJson() {
    return {
      'terms': this.terms,
      'hyperLink': this.category,
      'image': this.image,
      'video': this.video,
      'category': this.category,
      'text': this.text.toJson(),
    };
  }
}

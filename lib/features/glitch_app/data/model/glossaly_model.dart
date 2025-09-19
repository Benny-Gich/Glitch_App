class LongfixModel {
  final String category;
  final String time;
  final String desc;

  LongfixModel({
    required this.category,
    required this.time,
    required this.desc,
  });

  Map<String, dynamic> toJson() {
    return {'category': this.category, 'time': this.time, 'desc': this.desc};
  }

  factory LongfixModel.fromJson(Map<String, dynamic> map) {
    return LongfixModel(
      category: map['category'],
      time: map['time'],
      desc: map['desc'],
    );
  }
}

class TextModel {
  final String quickfix;
  final List<LongfixModel> longfix;

  TextModel({required this.quickfix, required this.longfix});

  Map<String, dynamic> toJson() {
    return {
      'quickfix': this.quickfix,
      'longfix': this.longfix.map((element) => element.toJson()).toList(),
    };
  }

  factory TextModel.fromJson(Map<String, dynamic> map) {
    final Longfixed = ['longfix'] as List<Map<String, dynamic>>;
    final List<LongfixModel> data = Longfixed.map(
      (element) => LongfixModel.fromJson(element),
    ).toList();
    return TextModel(quickfix: map['quickfix'], longfix: data);
  }
}

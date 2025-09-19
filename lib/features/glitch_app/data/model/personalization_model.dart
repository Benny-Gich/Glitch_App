class PersonalizationModel {
  final String skinType;
  final String duration;
  final List<String> skinConcern;
  final String cost;
  final String productType;
  final String stressLevel;
  final String environment;
  final String waterConsumption;
  final String cleanse;
  final String pollution;
  final String active;
  final String contactLense;
  final String sleepingHabits;
  final String? age;
  final String skinRedness;
  final String country;

  PersonalizationModel({
    required this.skinType,
    required this.duration,
    required this.skinConcern,
    required this.cost,
    required this.productType,
    required this.stressLevel,
    required this.environment,
    required this.waterConsumption,
    required this.cleanse,
    required this.pollution,
    required this.active,
    required this.contactLense,
    required this.sleepingHabits,
    this.age,
    required this.skinRedness,
    required this.country,
  });
  Map<String, dynamic> toJson() {
    return {
      'skinType': this.skinType,
      'duration': this.duration,
      'skinConcern': this.skinConcern,
      'cost': this.cost,
      'productType': this.productType,
      'stressLevel': this.stressLevel,
      'environment': this.environment,
      'waterConsumption': this.waterConsumption,
      'cleanse': this.cleanse,
      'pollution': this.pollution,
      'active': this.active,
      'contactLense': this.contactLense,
      'sleepingHabits': this.sleepingHabits,
      'skinRedness': this.skinRedness,
      'country': this.country,
    };
  }

  factory PersonalizationModel.fromJson(Map<String, dynamic> map) {
    return PersonalizationModel(
      skinType: map['skinType'],
      duration: map['duration'],
      skinConcern: map['skinConcern'],
      cost: map['cost'],
      productType: map['productType'],
      stressLevel: map['stressLevel'],
      environment: map['environment'],
      waterConsumption: map['waterConsumption'],
      cleanse: map['cleanse'],
      pollution: map['pollution'],
      active: map['active'],
      contactLense: map['contactLense'],
      sleepingHabits: map['sleepingHabits'],
      skinRedness: map['skinRedness'],
      country: map['country'],
    );
  }
}

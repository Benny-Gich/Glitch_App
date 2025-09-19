class NaturalProductsModel {
  final num priority;
  final String parentCategory;
  final String category;
  final num brandId;
  final String brandNames;
  final String skinCare;
  final List<String> skinType;
  final String duration;
  final String routine;
  final String productName;
  final String productLinks;
  final List<String> skinConcern;
  final String frequency;
  final num cost;
  final num ratings;
  final String country;
  final String productImage;
  final List<String> productType;
  final String productCodes;
  final String stressLevel;
  final String environment;
  final String waterConsumption;
  final String age;
  final String faceCleanse;
  final String pollution;
  final String physicallyActive;
  final String contactLens;
  final String sleepHabits;
  final String primaryKey;
  final num newRating;
  final num costOrder;

  NaturalProductsModel({
    required this.priority,
    required this.parentCategory,
    required this.category,
    required this.brandId,
    required this.brandNames,
    required this.skinCare,
    required this.skinType,
    required this.duration,
    required this.routine,
    required this.productName,
    required this.productLinks,
    required this.skinConcern,
    required this.frequency,
    required this.cost,
    required this.ratings,
    required this.country,
    required this.productImage,
    required this.productType,
    required this.productCodes,
    required this.stressLevel,
    required this.environment,
    required this.waterConsumption,
    required this.age,
    required this.faceCleanse,
    required this.pollution,
    required this.physicallyActive,
    required this.contactLens,
    required this.sleepHabits,
    required this.primaryKey,
    required this.newRating,
    required this.costOrder,
  });
  Map<String, dynamic> toJson() {
    return {
      'priority': this.priority,
      'parentCategory': this.parentCategory,
      'category': this.category,
      'brandId': this.brandId,
      'brandNames': this.brandNames,
      'skinCare': this.skinCare,
      'skinType': this.skinType,
      'duration': this.duration,
      'routine': this.routine,
      'productName': this.productName,
      'productLinks': this.productLinks,
      'skinConcern': this.skinConcern,
      'frequency': this.frequency,
      'cost': this.cost,
      'ratings': this.ratings,
      'country': this.country,
      'productImage': this.productImage,
      'productType': this.productType,
      'productCodes': this.productCodes,
      'stressLevel': this.stressLevel,
      'environment': this.environment,
      'waterConsumption': this.waterConsumption,
      'age': this.age,
      'faceCleanse': this.faceCleanse,
      'pollution': this.pollution,
      'physicallyActive': this.physicallyActive,
      'contactLens': this.contactLens,
      'sleepHabits': this.sleepHabits,
      'primaryKey': this.primaryKey,
      'newRating': this.newRating,
      'costOrder': this.costOrder,
    };
  }

  factory NaturalProductsModel.fromJson(Map<String, dynamic> map) {
    return NaturalProductsModel(
      priority: map['priority'],
      parentCategory: map['parentCategory'],
      category: map['category'],
      brandId: map['brandId'],
      brandNames: map['brandNames'],
      skinCare: map['skinCare'],
      skinType: map['skinType'],
      duration: map['duration'],
      routine: map['routine'],
      productName: map['productName'],
      productLinks: map['productLinks'],
      skinConcern: map['skinConcern'],
      frequency: map['frequency'],
      cost: map['cost'],
      ratings: map['ratings'],
      country: map['country'],
      productImage: map['productImage'],
      productType: map['productType'],
      productCodes: map['productCodes'],
      stressLevel: map['stressLevel'],
      environment: map['environment'],
      waterConsumption: map['waterConsumption'],
      age: map['age'],
      faceCleanse: map['faceCleanse'],
      pollution: map['pollution'],
      physicallyActive: map['physicallyActive'],
      contactLens: map['contactLens'],
      sleepHabits: map['sleepHabits'],
      primaryKey: map['primaryKey'],
      newRating: map['newRating'],
      costOrder: map['costOrder'],
    );
  }
}

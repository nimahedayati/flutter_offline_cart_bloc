class ProductRatingModel {
  final double rate;
  final int count;

  ProductRatingModel({required this.rate, required this.count});

  factory ProductRatingModel.fromJson(Map<String, dynamic> json) {
    return ProductRatingModel(
      rate: (json['rate'] as num).toDouble(),
      count: json['count'] as int,
    );
  }
}

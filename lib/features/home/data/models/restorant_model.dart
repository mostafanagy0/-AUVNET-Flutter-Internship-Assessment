class RestaurantModel {
  final String id;
  final String name;
  final String imageUrl;
  final String duration;

  RestaurantModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.duration,
  });

  factory RestaurantModel.fromMap(Map<String, dynamic> data, String documentId) {
    return RestaurantModel(
      id: documentId,
      name: data['name'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      duration: data['duration'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'duration': duration,
    };
  }
}
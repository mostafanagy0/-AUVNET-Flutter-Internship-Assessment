class ServiceModel {
  final String id;
  final String name;
  final String imageUrl;
  final String duration;

  ServiceModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.duration,
  });

  factory ServiceModel.fromMap(Map<String, dynamic> data, String documentId) {
    return ServiceModel(
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
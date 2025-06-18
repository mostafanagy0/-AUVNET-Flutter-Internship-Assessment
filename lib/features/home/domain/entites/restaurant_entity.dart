class RestaurantEntity {
  final String id;
  final String name;
  final String imageUrl;
  final String duration;

  RestaurantEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.duration,
  });

  RestaurantEntity copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? duration,
  }) {
    return RestaurantEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      duration: duration ?? this.duration,
    );
  }

  @override
  String toString() =>
      'RestaurantEntity(id: $id, name: $name, imageUrl: $imageUrl, duration: $duration)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RestaurantEntity &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          imageUrl == other.imageUrl &&
          duration == other.duration;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ imageUrl.hashCode ^ duration.hashCode;
}
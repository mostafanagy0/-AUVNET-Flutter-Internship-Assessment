class ServiceEntity {
  final String id;
  final String name;
  final String imageUrl;
  final String duration;

  ServiceEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.duration,
  });

  ServiceEntity copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? duration,
  }) {
    return ServiceEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      duration: duration ?? this.duration,
    );
  }

  @override
  String toString() =>
      'ServiceEntity(id: $id, name: $name, imageUrl: $imageUrl, duration: $duration)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceEntity &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          imageUrl == other.imageUrl &&
          duration == other.duration;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ imageUrl.hashCode ^ duration.hashCode;
}
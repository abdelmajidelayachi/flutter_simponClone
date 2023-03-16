

class BriefModel {

  final String name;
  final String description;
  final String image;
  final int promo_id;
  final String created_at;
  final String updated_at;

  const BriefModel({
    required this.name,
    required this.description,
    required this.image,
    required this.promo_id,
    required this.created_at,
    required this.updated_at,
  });

  toJson() {
    return {
      'name': name,
      'description': description,
      'image': image,
      'promo_id': promo_id,
      'created_at': created_at,
      'updated_at': updated_at,
    };
  }

  static fromJson(Map<String, dynamic> data) {
    return BriefModel(
      name: data['name'],
      description: data['description'],
      image: data['image'],
      promo_id: data['promo_id'],
      created_at: data['created_at'],
      updated_at: data['updated_at'],
    );
  }
}
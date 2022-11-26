class CartField {
  static final List<String> values = [id, title, images, price];

  static const favorite = 'favorite';

  static final String id = 'id';
  static final String title = 'title';
  static final String images = 'images';
  static final String price = 'price';
}

class CartModel {
  final int id;
  final String title, price, images;

  CartModel({
    required this.id,
    required this.title,
    required this.price,
    required this.images,
  });

  factory CartModel.fromMap(Map<String, dynamic> json) {
    return CartModel(
        id: json['id'] as int,
        title: json['title'] as String,
        price: json['price'] as String,
        images: json['images'] as String);
  }

  Map<String, dynamic> toMap() => {
        CartField.id: id,
        CartField.title: title,
        CartField.price: price,
        CartField.images: images
      };
}

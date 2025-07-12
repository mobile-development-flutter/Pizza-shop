class MyUserEntity {
  final String id;
  final String name;
  final String email;
  bool hasActiveCart;

  MyUserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.hasActiveCart,
  });

  get userId => null;

  Map<String, Object> toDocument() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'hasActiveCart': hasActiveCart,
    };
  }
  static MyUserEntity fromDocument(Map<String, Object?> doc) {
    return MyUserEntity(
      id: doc['id'] as String,
      name: doc['name'] as String,
      email: doc['email'] as String,
      hasActiveCart: doc['hasActiveCart'] as bool,
    );
  }
}

class Product {
  int _code;
  String _description;
  String _image;
  DateTime? _insertedAt;
  DateTime? _updatedAt;

  Product(this._code,this._description, this._image, this._insertedAt, this._updatedAt);

  int get codigo => this._code;
  String get description => this._description;
  String get iamge => this._image;
  DateTime get insertedAt => this._insertedAt == null ? DateTime.now() : this.insertedAt;
  DateTime get updatedAt => this._updatedAt == null ? DateTime.now() : this.updatedAt;

  set codigo(int code) => this._code = code;
  set description(String description) => this._description = description;
  set image(String image) => this._image = image;
  set insertedAt(DateTime insertedAt) => this._insertedAt = insertedAt;
  set updatedAt(DateTime updatedAt) => this._updatedAt = updatedAt;
}
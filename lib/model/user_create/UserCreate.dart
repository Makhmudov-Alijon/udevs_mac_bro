class UserCreate {
  UserCreate({
      bool? exists,}){
    _exists = exists;
}

  UserCreate.fromJson(dynamic json) {
    _exists = json['exists'];
  }
  bool? _exists;
UserCreate copyWith({  bool? exists,
}) => UserCreate(  exists: exists ?? _exists,
);
  bool? get exists => _exists;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['exists'] = _exists;
    return map;
  }

}
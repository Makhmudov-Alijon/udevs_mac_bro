class UserCreateTokenBody {
  UserCreateTokenBody({
     required String? clientTypeId,
     required String? password,
     required String? username,
      required String? tag,}){
    _clientTypeId = clientTypeId;
    _password = password;
    _username = username;
    _tag = tag;
}

  UserCreateTokenBody.fromJson(dynamic json) {
    _clientTypeId = json['client_type_id'];
    _password = json['password'];
    _username = json['username'];
    _tag = json['tag'];
  }
  String? _clientTypeId;
  String? _password;
  String? _username;
  String? _tag;
UserCreateTokenBody copyWith({  String? clientTypeId,
  String? password,
  String? username,
  String? tag,
}) => UserCreateTokenBody(  clientTypeId: clientTypeId ?? _clientTypeId,
  password: password ?? _password,
  username: username ?? _username,
  tag: tag ?? _tag,
);
  String? get clientTypeId => _clientTypeId;
  String? get password => _password;
  String? get username => _username;
  String? get tag => _tag;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['client_type_id'] = _clientTypeId;
    map['password'] = _password;
    map['username'] = _username;
    map['tag'] = _tag;
    return map;
  }

}
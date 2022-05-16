class UserCreatrePasscode {
  UserCreatrePasscode({
      int? code, 
      String? message, 
      dynamic error, 
      Data? data,}){
    _code = code;
    _message = message;
    _error = error;
    _data = data;
}

  UserCreatrePasscode.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    _error = json['error'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? _code;
  String? _message;
  dynamic _error;
  Data? _data;
UserCreatrePasscode copyWith({  int? code,
  String? message,
  dynamic error,
  Data? data,
}) => UserCreatrePasscode(  code: code ?? _code,
  message: message ?? _message,
  error: error ?? _error,
  data: data ?? _data,
);
  int? get code => _code;
  String? get message => _message;
  dynamic get error => _error;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['message'] = _message;
    map['error'] = _error;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      ClientType? clientType, 
      bool? userFound, 
      User? user, 
      dynamic userSessions, 
      Token? token,}){
    _clientType = clientType;
    _userFound = userFound;
    _user = user;
    _userSessions = userSessions;
    _token = token;
}

  Data.fromJson(dynamic json) {
    _clientType = json['client_type'] != null ? ClientType.fromJson(json['client_type']) : null;
    _userFound = json['user_found'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _userSessions = json['user_sessions'];
    _token = json['token'] != null ? Token.fromJson(json['token']) : null;
  }
  ClientType? _clientType;
  bool? _userFound;
  User? _user;
  dynamic _userSessions;
  Token? _token;
Data copyWith({  ClientType? clientType,
  bool? userFound,
  User? user,
  dynamic userSessions,
  Token? token,
}) => Data(  clientType: clientType ?? _clientType,
  userFound: userFound ?? _userFound,
  user: user ?? _user,
  userSessions: userSessions ?? _userSessions,
  token: token ?? _token,
);
  ClientType? get clientType => _clientType;
  bool? get userFound => _userFound;
  User? get user => _user;
  dynamic get userSessions => _userSessions;
  Token? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_clientType != null) {
      map['client_type'] = _clientType?.toJson();
    }
    map['user_found'] = _userFound;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['user_sessions'] = _userSessions;
    if (_token != null) {
      map['token'] = _token?.toJson();
    }
    return map;
  }

}

class Token {
  Token({
      String? accessToken, 
      String? refreshToken, 
      String? createdAt, 
      String? updatedAt, 
      String? expiresAt, 
      int? refreshInSeconds,}){
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _expiresAt = expiresAt;
    _refreshInSeconds = refreshInSeconds;
}

  Token.fromJson(dynamic json) {
    _accessToken = json['access_token'];
    _refreshToken = json['refresh_token'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _expiresAt = json['expires_at'];
    _refreshInSeconds = json['refresh_in_seconds'];
  }
  String? _accessToken;
  String? _refreshToken;
  String? _createdAt;
  String? _updatedAt;
  String? _expiresAt;
  int? _refreshInSeconds;
Token copyWith({  String? accessToken,
  String? refreshToken,
  String? createdAt,
  String? updatedAt,
  String? expiresAt,
  int? refreshInSeconds,
}) => Token(  accessToken: accessToken ?? _accessToken,
  refreshToken: refreshToken ?? _refreshToken,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  expiresAt: expiresAt ?? _expiresAt,
  refreshInSeconds: refreshInSeconds ?? _refreshInSeconds,
);
  String? get accessToken => _accessToken;
  String? get refreshToken => _refreshToken;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get expiresAt => _expiresAt;
  int? get refreshInSeconds => _refreshInSeconds;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['access_token'] = _accessToken;
    map['refresh_token'] = _refreshToken;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['expires_at'] = _expiresAt;
    map['refresh_in_seconds'] = _refreshInSeconds;
    return map;
  }

}

class User {
  User({
      String? id, 
      String? clientTypeId, 
      String? roleId, 
      String? password, 
      int? active, 
      String? expiresAt, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _clientTypeId = clientTypeId;
    _roleId = roleId;
    _password = password;
    _active = active;
    _expiresAt = expiresAt;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _clientTypeId = json['client_type_id'];
    _roleId = json['role_id'];
    _password = json['password'];
    _active = json['active'];
    _expiresAt = json['expires_at'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _clientTypeId;
  String? _roleId;
  String? _password;
  int? _active;
  String? _expiresAt;
  String? _createdAt;
  String? _updatedAt;
User copyWith({  String? id,
  String? clientTypeId,
  String? roleId,
  String? password,
  int? active,
  String? expiresAt,
  String? createdAt,
  String? updatedAt,
}) => User(  id: id ?? _id,
  clientTypeId: clientTypeId ?? _clientTypeId,
  roleId: roleId ?? _roleId,
  password: password ?? _password,
  active: active ?? _active,
  expiresAt: expiresAt ?? _expiresAt,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  String? get clientTypeId => _clientTypeId;
  String? get roleId => _roleId;
  String? get password => _password;
  int? get active => _active;
  String? get expiresAt => _expiresAt;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['client_type_id'] = _clientTypeId;
    map['role_id'] = _roleId;
    map['password'] = _password;
    map['active'] = _active;
    map['expires_at'] = _expiresAt;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

class ClientType {
  ClientType({
      String? id, 
      String? name, 
      String? strategy, 
      String? confirmBy, 
      bool? phone, 
      bool? email, 
      bool? login, 
      bool? selfRegister, 
      bool? selfRecover,}){
    _id = id;
    _name = name;
    _strategy = strategy;
    _confirmBy = confirmBy;
    _phone = phone;
    _email = email;
    _login = login;
    _selfRegister = selfRegister;
    _selfRecover = selfRecover;
}

  ClientType.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _strategy = json['strategy'];
    _confirmBy = json['confirm_by'];
    _phone = json['phone'];
    _email = json['email'];
    _login = json['login'];
    _selfRegister = json['self_register'];
    _selfRecover = json['self_recover'];
  }
  String? _id;
  String? _name;
  String? _strategy;
  String? _confirmBy;
  bool? _phone;
  bool? _email;
  bool? _login;
  bool? _selfRegister;
  bool? _selfRecover;
ClientType copyWith({  String? id,
  String? name,
  String? strategy,
  String? confirmBy,
  bool? phone,
  bool? email,
  bool? login,
  bool? selfRegister,
  bool? selfRecover,
}) => ClientType(  id: id ?? _id,
  name: name ?? _name,
  strategy: strategy ?? _strategy,
  confirmBy: confirmBy ?? _confirmBy,
  phone: phone ?? _phone,
  email: email ?? _email,
  login: login ?? _login,
  selfRegister: selfRegister ?? _selfRegister,
  selfRecover: selfRecover ?? _selfRecover,
);
  String? get id => _id;
  String? get name => _name;
  String? get strategy => _strategy;
  String? get confirmBy => _confirmBy;
  bool? get phone => _phone;
  bool? get email => _email;
  bool? get login => _login;
  bool? get selfRegister => _selfRegister;
  bool? get selfRecover => _selfRecover;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['strategy'] = _strategy;
    map['confirm_by'] = _confirmBy;
    map['phone'] = _phone;
    map['email'] = _email;
    map['login'] = _login;
    map['self_register'] = _selfRegister;
    map['self_recover'] = _selfRecover;
    return map;
  }

}
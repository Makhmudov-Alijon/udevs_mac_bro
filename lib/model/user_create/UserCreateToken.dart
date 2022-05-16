class UserCreateToken {
  UserCreateToken({
      int? code, 
      String? message, 
      dynamic error, 
      Data? data,}){
    _code = code;
    _message = message;
    _error = error;
    _data = data;
}

  UserCreateToken.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    _error = json['error'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? _code;
  String? _message;
  dynamic _error;
  Data? _data;
UserCreateToken copyWith({  int? code,
  String? message,
  dynamic error,
  Data? data,
}) => UserCreateToken(  code: code ?? _code,
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
      bool? userFound, 
      ClientType? clientType, 
      User? user, 
      List<UserSessions>? userSessions, 
      String? passcodeToken, 
      int? period,}){
    _userFound = userFound;
    _clientType = clientType;
    _user = user;
    _userSessions = userSessions;
    _passcodeToken = passcodeToken;
    _period = period;
}

  Data.fromJson(dynamic json) {
    _userFound = json['user_found'];
    _clientType = json['client_type'] != null ? ClientType.fromJson(json['client_type']) : null;
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    if (json['user_sessions'] != null) {
      _userSessions = [];
      json['user_sessions'].forEach((v) {
        _userSessions?.add(UserSessions.fromJson(v));
      });
    }
    _passcodeToken = json['passcode_token'];
    _period = json['period'];
  }
  bool? _userFound;
  ClientType? _clientType;
  User? _user;
  List<UserSessions>? _userSessions;
  String? _passcodeToken;
  int? _period;
Data copyWith({  bool? userFound,
  ClientType? clientType,
  User? user,
  List<UserSessions>? userSessions,
  String? passcodeToken,
  int? period,
}) => Data(  userFound: userFound ?? _userFound,
  clientType: clientType ?? _clientType,
  user: user ?? _user,
  userSessions: userSessions ?? _userSessions,
  passcodeToken: passcodeToken ?? _passcodeToken,
  period: period ?? _period,
);
  bool? get userFound => _userFound;
  ClientType? get clientType => _clientType;
  User? get user => _user;
  List<UserSessions>? get userSessions => _userSessions;
  String? get passcodeToken => _passcodeToken;
  int? get period => _period;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_found'] = _userFound;
    if (_clientType != null) {
      map['client_type'] = _clientType?.toJson();
    }
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    if (_userSessions != null) {
      map['user_sessions'] = _userSessions?.map((v) => v.toJson()).toList();
    }
    map['passcode_token'] = _passcodeToken;
    map['period'] = _period;
    return map;
  }

}

class UserSessions {
  UserSessions({
      String? clientPlatformId, 
      String? clientTypeId, 
      String? userId, 
      String? id, 
      String? roleId, 
      String? ip, 
      String? data, 
      String? createdAt, 
      String? updatedAt, 
      String? expiresAt,}){
    _clientPlatformId = clientPlatformId;
    _clientTypeId = clientTypeId;
    _userId = userId;
    _id = id;
    _roleId = roleId;
    _ip = ip;
    _data = data;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _expiresAt = expiresAt;
}

  UserSessions.fromJson(dynamic json) {
    _clientPlatformId = json['client_platform_id'];
    _clientTypeId = json['client_type_id'];
    _userId = json['user_id'];
    _id = json['id'];
    _roleId = json['role_id'];
    _ip = json['ip'];
    _data = json['data'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _expiresAt = json['expires_at'];
  }
  String? _clientPlatformId;
  String? _clientTypeId;
  String? _userId;
  String? _id;
  String? _roleId;
  String? _ip;
  String? _data;
  String? _createdAt;
  String? _updatedAt;
  String? _expiresAt;
UserSessions copyWith({  String? clientPlatformId,
  String? clientTypeId,
  String? userId,
  String? id,
  String? roleId,
  String? ip,
  String? data,
  String? createdAt,
  String? updatedAt,
  String? expiresAt,
}) => UserSessions(  clientPlatformId: clientPlatformId ?? _clientPlatformId,
  clientTypeId: clientTypeId ?? _clientTypeId,
  userId: userId ?? _userId,
  id: id ?? _id,
  roleId: roleId ?? _roleId,
  ip: ip ?? _ip,
  data: data ?? _data,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  expiresAt: expiresAt ?? _expiresAt,
);
  String? get clientPlatformId => _clientPlatformId;
  String? get clientTypeId => _clientTypeId;
  String? get userId => _userId;
  String? get id => _id;
  String? get roleId => _roleId;
  String? get ip => _ip;
  String? get data => _data;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get expiresAt => _expiresAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['client_platform_id'] = _clientPlatformId;
    map['client_type_id'] = _clientTypeId;
    map['user_id'] = _userId;
    map['id'] = _id;
    map['role_id'] = _roleId;
    map['ip'] = _ip;
    map['data'] = _data;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['expires_at'] = _expiresAt;
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
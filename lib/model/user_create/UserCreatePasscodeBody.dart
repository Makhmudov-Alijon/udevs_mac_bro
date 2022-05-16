class UserCreatePasscodeBody {
  UserCreatePasscodeBody({
     required String? passcode,
     required String? passcodeToken,
     required String? fcmToken,}){
    _passcode = passcode;
    _passcodeToken = passcodeToken;
    _fcmToken = fcmToken;
}

  UserCreatePasscodeBody.fromJson(dynamic json) {
    _passcode = json['passcode'];
    _passcodeToken = json['passcode_token'];
    _fcmToken = json['fcm_token'];
  }
  String? _passcode;
  String? _passcodeToken;
  String? _fcmToken;
UserCreatePasscodeBody copyWith({  String? passcode,
  String? passcodeToken,
  String? fcmToken,
}) => UserCreatePasscodeBody(  passcode: passcode ?? _passcode,
  passcodeToken: passcodeToken ?? _passcodeToken,
  fcmToken: fcmToken ?? _fcmToken,
);
  String? get passcode => _passcode;
  String? get passcodeToken => _passcodeToken;
  String? get fcmToken => _fcmToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['passcode'] = _passcode;
    map['passcode_token'] = _passcodeToken;
    map['fcm_token'] = _fcmToken;
    return map;
  }

}
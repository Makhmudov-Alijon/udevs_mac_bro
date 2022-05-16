class UserCreateBody {
  UserCreateBody({
      String? phoneNumber,}){
    _phoneNumber = phoneNumber;
}

  UserCreateBody.fromJson(dynamic json) {
    _phoneNumber = json['phone_number'];
  }
  String? _phoneNumber;
UserCreateBody copyWith({  String? phoneNumber,
}) => UserCreateBody(  phoneNumber: phoneNumber ?? _phoneNumber,
);
  String? get phoneNumber => _phoneNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['phone_number'] = _phoneNumber;
    return map;
  }

}
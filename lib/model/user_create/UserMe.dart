class UserMe {
  UserMe({
      String? id, 
      String? firstName, 
      String? lastName, 
      String? middleName, 
      String? phoneNumber, 
      String? email, 
      String? inn, 
      String? dateOfBirth, 
      String? profileImage, 
      String? passportNumber, 
      int? accountNumber, 
      String? cityId, 
      String? productId, 
      String? adReference,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _middleName = middleName;
    _phoneNumber = phoneNumber;
    _email = email;
    _inn = inn;
    _dateOfBirth = dateOfBirth;
    _profileImage = profileImage;
    _passportNumber = passportNumber;
    _accountNumber = accountNumber;
    _cityId = cityId;
    _productId = productId;
    _adReference = adReference;
}

  UserMe.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _middleName = json['middle_name'];
    _phoneNumber = json['phone_number'];
    _email = json['email'];
    _inn = json['inn'];
    _dateOfBirth = json['date_of_birth'];
    _profileImage = json['profile_image'];
    _passportNumber = json['passport_number'];
    _accountNumber = json['account_number'];
    _cityId = json['city_id'];
    _productId = json['product_id'];
    _adReference = json['ad_reference'];
  }
  String? _id;
  String? _firstName;
  String? _lastName;
  String? _middleName;
  String? _phoneNumber;
  String? _email;
  String? _inn;
  String? _dateOfBirth;
  String? _profileImage;
  String? _passportNumber;
  int? _accountNumber;
  String? _cityId;
  String? _productId;
  String? _adReference;
UserMe copyWith({  String? id,
  String? firstName,
  String? lastName,
  String? middleName,
  String? phoneNumber,
  String? email,
  String? inn,
  String? dateOfBirth,
  String? profileImage,
  String? passportNumber,
  int? accountNumber,
  String? cityId,
  String? productId,
  String? adReference,
}) => UserMe(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  middleName: middleName ?? _middleName,
  phoneNumber: phoneNumber ?? _phoneNumber,
  email: email ?? _email,
  inn: inn ?? _inn,
  dateOfBirth: dateOfBirth ?? _dateOfBirth,
  profileImage: profileImage ?? _profileImage,
  passportNumber: passportNumber ?? _passportNumber,
  accountNumber: accountNumber ?? _accountNumber,
  cityId: cityId ?? _cityId,
  productId: productId ?? _productId,
  adReference: adReference ?? _adReference,
);
  String? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get middleName => _middleName;
  String? get phoneNumber => _phoneNumber;
  String? get email => _email;
  String? get inn => _inn;
  String? get dateOfBirth => _dateOfBirth;
  String? get profileImage => _profileImage;
  String? get passportNumber => _passportNumber;
  int? get accountNumber => _accountNumber;
  String? get cityId => _cityId;
  String? get productId => _productId;
  String? get adReference => _adReference;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['middle_name'] = _middleName;
    map['phone_number'] = _phoneNumber;
    map['email'] = _email;
    map['inn'] = _inn;
    map['date_of_birth'] = _dateOfBirth;
    map['profile_image'] = _profileImage;
    map['passport_number'] = _passportNumber;
    map['account_number'] = _accountNumber;
    map['city_id'] = _cityId;
    map['product_id'] = _productId;
    map['ad_reference'] = _adReference;
    return map;
  }

}
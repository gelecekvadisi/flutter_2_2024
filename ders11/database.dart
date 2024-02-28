class Database {
  String _userName = "admin";
  String _password = "1234567890";
  String _databaseAddress = "192.168.1.1:8080";

  //  getter - get
  //  setter - set

  String getUserName() {
    return _userName;
  }

  String get userName => _userName;

  void setUserName(String newValue) {
    _userName = newValue;
  }

  set userName(String newValue) {
    _userName = newValue;
  }

  login(){}
  logOut(){}
  _followUser(String takipEdilecekUserId){}

}
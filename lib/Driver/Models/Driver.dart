class Driver {
  String userId;
  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  String passWord;
  int wallet;
  String paymentInfo;
  String location;
  String recentLocation;
  List<String> locations;

  Driver(String userId, String firstName, String lastName, String email,
      String phoneNumber, String passWord, int wallet, String paymentInfo, 
      ) {
    this.userId = userId;
    this.firstName = firstName;
    this.lastName = lastName;
    this.email = email;
    this.phoneNumber = phoneNumber;
    this.passWord = passWord;
    this.wallet = wallet;
    this.paymentInfo = paymentInfo;
  
  }

  String getUserId() {
    return userId;
  }

  String getFirstName() {
    return firstName;
  }

  String getLastName() {
    return lastName;
  }

  String getEmail() {
    return email;
  }

  String getPhoneNumber() {
    return phoneNumber;
  }

  String getPassWord() {
    return passWord;
  }
  int getWallet() {
    return wallet;
  }
  String getPaymentInfo() {
    return paymentInfo;
  }



  void setUserId(String userId) {
    this.userId = userId;
  }

  void setFirstName(String firstName) {
    this.firstName=  firstName;
  }

  void setLastName(String lastName) {
    this.lastName= lastName;
  }

  void setEmail(String email) {
    this.email= email;
  }

  void setPhoneNumber(String phoneNumber) {
    this.phoneNumber= phoneNumber;
  }

  void setPassWord(String passWord) {
    this.passWord= passWord;
  }
  void setWallet(int wallet) {
    this.wallet= wallet;
  }
  void setPaymentInfo(String paymentInfo) {
    this.paymentInfo= paymentInfo;
  }

}

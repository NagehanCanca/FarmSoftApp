class User {
  int? id;
  int? insertUser;
  String? insertDate;
  int? updateUser;
  String? updateDate;
  String? username;
  String? email;
  String? password;
  String? firstName;
  String? lastName;

  User(
      {this.id,
        this.insertUser,
        this.insertDate,
        this.updateUser,
        this.updateDate,
        this.username,
        this.email,
        this.password,
        this.firstName,
        this.lastName});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    insertUser = json['insertUser'];
    insertDate = json['insertDate'];
    updateUser = json['updateUser'];
    updateDate = json['updateDate'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    firstName = json['firstName'];
    lastName = json['lastName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['insertUser'] = this.insertUser;
    data['insertDate'] = this.insertDate;
    data['updateUser'] = this.updateUser;
    data['updateDate'] = this.updateDate;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    return data;
  }
}
import 'database.dart';

void main(List<String> args) {
  Database db = Database();

  db.getUserName();
  db.userName;

  db.setUserName("furkan");
  db.userName = "furkan";
}


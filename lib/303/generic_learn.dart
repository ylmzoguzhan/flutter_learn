class UserManagement<T extends AdminUser> {
  final T admin;
  UserManagement(this.admin);
  void sayName(GenericUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenericUser> users) {
    int sum = 0;
    for (var user in users) {
      sum += user.money;
    }
    int initialValue = admin.role == 1 ? admin.money : 0;
    final sunMoney = users
        .map((e) => e.money)
        .fold<int>(0, (previousValue, element) => initialValue + element);
    return sunMoney;
  }
}

class GenericUser {
  final String name;
  final String id;
  final int money;
  GenericUser(this.name, this.id, this.money);
}

class AdminUser extends GenericUser {
  final int role;
  AdminUser(String name, String id, int money, this.role)
      : super(name, id, money);
}

import 'package:flutter_full_learn/303/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  test('User calculate', () {
    final users = [
      GenericUser('oğuz', '11', 10),
      GenericUser('oğuz', '21', 20),
      GenericUser('oğuz', '31', 30)
    ];
    final result =
        UserManagement(AdminUser('admin', '1', 10, 1)).calculateMoney(users);

    expect(result, 70);
  });
}

main() {
  int x = 12;
  int y = 0;
  int res;

  try {
    res = x ~/ y;
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero');
  }
}

main2() {
  int x = 12;
  int y = 0;
  int res;

  try {
    res = x ~/ y;
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  }
}

void main3() {
  try {
    int firstInput = 20;
    int secondInput = 4;
    int result = firstInput ~/ secondInput;

    print('The result of $firstInput divided by $secondInput is $result');
  } catch (e) {
    print('Exception occurs: $e');
  }
}

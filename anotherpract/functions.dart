void main() {
  findPerimeter(9, 6);
  var rectArea = findArea(10, 6);
  print('The area is $rectArea');
}

void findPerimeter(int length, int breath) {
  var perimeter = 2 * (length * breath);
  print('The perimeter is $perimeter');
}

int findArea(int length, int breath) {
  return length * breath;
}

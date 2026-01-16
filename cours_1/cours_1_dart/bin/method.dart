void main() {
  method(0);
  method(0, 1);
  method(0, null);
  method(0, 1, 4);

}

void method (int a,[int? b, int? c=4]){}
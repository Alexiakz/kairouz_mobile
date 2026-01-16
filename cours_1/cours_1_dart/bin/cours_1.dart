void main() {
  int? a;
  int b = a ?? 5;


  if (a == null) {
    a = 3;
  }
  
  int c = a;
  print(c);

  print(a.isEven);
}
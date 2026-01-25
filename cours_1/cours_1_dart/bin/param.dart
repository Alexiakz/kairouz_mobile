String foo({String? name, int? number, bool toUpperCase=false}) =>
  '${(toUpperCase ? name.toUpperCase() : name)} $number';

void useFoo() {
 foo(name: 'a');
 foo(name: 'b', number: 1);
 foo(name: 'c', toUpperCase: true);
 foo(name: 'd', number: 2, toUpperCase: true);
}
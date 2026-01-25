void main() {
  //création de la liste
  List<int> nombres = [25,42,79,12];

  //on la trie par ordre décroissnt
  nombres.sort((a,b) => b.compareTo(a));

  //multiplier chaque élément de la liste par 2
  nombres = nombres.map((n) => n*2).toList();

  //Que les nombres pairs
  nombres = nombres.where((n) => n.isEven).toList();

  print(nombres);
}
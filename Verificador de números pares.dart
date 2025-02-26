void main(List<String> args) {
  var lista = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 14];
  lista.add(16);
  lista.replaceRange(0, 0, [20]);
  print(lista);
  lista = [];
  var b = 0;
  for (var i = 0; i < lista.length; i++) {
    final value = (lista[i] % 2 == 0) ? lista[i] : 0;
    b += value;
    print(b);
  }
}

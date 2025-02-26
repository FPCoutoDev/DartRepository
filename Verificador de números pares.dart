void main(List<String> args) {
  var listaDeNumeros = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 14];
  listaDeNumeros.add(16);
  listaDeNumeros.replaceRange(0, 0, [20]);
  print("A lista inicial é $listaDeNumeros");
  var listaPar = [];
  for (var i = 0; i < listaDeNumeros.length; i++) {
    if (listaDeNumeros[i] % 2 ==0){
   listaPar.add(listaDeNumeros[i]);
    }
   }
  listaPar.sort((a, b) => a.compareTo(b));
  print("A lista filtrada com apenas algarismo pares tem ${listaPar.length} números: ${listaPar}");
}

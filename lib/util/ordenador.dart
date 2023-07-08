abstract class Decididor {
  bool precisaTrocarAtualPeloProximo(
      dynamic atual, dynamic proximo, bool crescente);
}

class Ordenador {
  List ordenadorCarinhoso(List item,
      bool Function(dynamic, dynamic, bool) callback, bool crescente) {
    List itemOrdenados = List.of(item);
    bool trocouAoMenosUm;
    do {
      trocouAoMenosUm = false;
      for (int i = 0; i < itemOrdenados.length - 1; i++) {
        var atual = itemOrdenados[i];
        var proximo = itemOrdenados[i + 1];
        if (callback(atual, proximo, crescente)) {
          var aux = itemOrdenados[i];
          itemOrdenados[i] = itemOrdenados[i + 1];
          itemOrdenados[i + 1] = aux;
          trocouAoMenosUm = true;
        }
      }
    } while (trocouAoMenosUm);
    return itemOrdenados;
  }
}

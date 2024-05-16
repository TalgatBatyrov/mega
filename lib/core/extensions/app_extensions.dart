extension MapWithIndex<T> on List<T> {
  List<E> mapWithIndex<E>(E Function(int index, T item) f) {
    var index = 0;
    return map((e) => f(index++, e)).toList();
  }
}

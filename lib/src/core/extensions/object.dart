extension NullableObjectExtension<A extends Object?> on A {
  /// Type safe object cast
  B? maybeCast<B>() {
    final self = this;

    return self is B ? self : null;
  }
}

mixin Compare<T> implements Comparable<T> {
  bool operator <=(T other) => compareTo(other) <= 0;
  bool operator >=(T other) => compareTo(other) >= 0;
  bool operator <(T other) => compareTo(other) < 0;
  bool operator >(T other) => compareTo(other) > 0;
}

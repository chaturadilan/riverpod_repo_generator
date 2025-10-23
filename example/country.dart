class Country {
  final String name;

  Country({required this.name});

  @override
  String toString() => 'Country(name: $name)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Country && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;
}
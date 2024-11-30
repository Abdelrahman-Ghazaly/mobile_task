sealed class MappableBase<T> {
  const MappableBase._(); // Protected constructor to prevent external instantiation

  factory MappableBase.fromJson(T json) => throw UnimplementedError();
}

abstract class Mappable extends MappableBase<Map<String, dynamic>> {
  const Mappable() : super._();

  factory Mappable.fromJson(Map<String, dynamic> json) => throw UnimplementedError();
}

abstract class ListMappable extends MappableBase<List<Map<String, dynamic>>> {
  const ListMappable() : super._();

  factory ListMappable.fromJson(List<Map<String, dynamic>> json) => throw UnimplementedError();
}

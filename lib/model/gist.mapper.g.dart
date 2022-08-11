import 'package:dart_mappable/dart_mappable.dart';
import 'package:dart_mappable/internals.dart';

import 'gist.dart';


// === ALL STATICALLY REGISTERED MAPPERS ===

var _mappers = <BaseMapper>{
  // class mappers
  GistDataMapper._(),
  // enum mappers
  // custom mappers
};


// === GENERATED CLASS MAPPERS AND EXTENSIONS ===

class GistDataMapper extends BaseMapper<GistData> {
  GistDataMapper._();

  @override Function get decoder => decode;
  GistData decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  GistData fromMap(Map<String, dynamic> map) => GistData(Mapper.i.$getOpt(map, 'id'), Mapper.i.$getOpt(map, 'description'), Mapper.i.$get(map, 'files'));

  @override Function get encoder => (GistData v) => encode(v);
  dynamic encode(GistData v) => toMap(v);
  Map<String, dynamic> toMap(GistData g) => {'id': Mapper.i.$enc(g.id, 'id'), 'description': Mapper.i.$enc(g.description, 'description'), 'files': Mapper.i.$enc(g.files, 'files')};

  @override String stringify(GistData self) => 'GistData(id: ${Mapper.asString(self.id)}, description: ${Mapper.asString(self.description)}, files: ${Mapper.asString(self.files)})';
  @override int hash(GistData self) => Mapper.hash(self.id) ^ Mapper.hash(self.description) ^ Mapper.hash(self.files);
  @override bool equals(GistData self, GistData other) => Mapper.isEqual(self.id, other.id) && Mapper.isEqual(self.description, other.description) && Mapper.isEqual(self.files, other.files);

  @override Function get typeFactory => (f) => f<GistData>();
}

extension GistDataMapperExtension  on GistData {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  GistDataCopyWith<GistData> get copyWith => GistDataCopyWith(this, $identity);
}

abstract class GistDataCopyWith<$R> {
  factory GistDataCopyWith(GistData value, Then<GistData, $R> then) = _GistDataCopyWithImpl<$R>;
  $R call({String? id, String? description, Map<String, GistFile>? files});
  $R apply(GistData Function(GistData) transform);
}

class _GistDataCopyWithImpl<$R> extends BaseCopyWith<GistData, $R> implements GistDataCopyWith<$R> {
  _GistDataCopyWithImpl(GistData value, Then<GistData, $R> then) : super(value, then);

  @override $R call({Object? id = $none, Object? description = $none, Map<String, GistFile>? files}) => $then(GistData(or(id, $value.id), or(description, $value.description), files ?? $value.files));
}


// === GENERATED ENUM MAPPERS AND EXTENSIONS ===




// === GENERATED UTILITY CODE ===

class Mapper {
  Mapper._();

  static MapperContainer i = MapperContainer(_mappers);

  static T fromValue<T>(dynamic value) => i.fromValue<T>(value);
  static T fromMap<T>(Map<String, dynamic> map) => i.fromMap<T>(map);
  static T fromIterable<T>(Iterable<dynamic> iterable) => i.fromIterable<T>(iterable);
  static T fromJson<T>(String json) => i.fromJson<T>(json);

  static dynamic toValue(dynamic value) => i.toValue(value);
  static Map<String, dynamic> toMap(dynamic object) => i.toMap(object);
  static Iterable<dynamic> toIterable(dynamic object) => i.toIterable(object);
  static String toJson(dynamic object) => i.toJson(object);

  static bool isEqual(dynamic value, Object? other) => i.isEqual(value, other);
  static int hash(dynamic value) => i.hash(value);
  static String asString(dynamic value) => i.asString(value);

  static void use<T>(BaseMapper<T> mapper) => i.use<T>(mapper);
  static BaseMapper<T>? unuse<T>() => i.unuse<T>();
  static void useAll(List<BaseMapper> mappers) => i.useAll(mappers);

  static BaseMapper<T>? get<T>([Type? type]) => i.get<T>(type);
  static List<BaseMapper> getAll() => i.getAll();
}

mixin Mappable implements MappableMixin {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);

  @override
  String toString() {
    return _guard(() => Mapper.asString(this), super.toString);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            _guard(() => Mapper.isEqual(this, other), () => super == other));
  }

  @override
  int get hashCode {
    return _guard(() => Mapper.hash(this), () => super.hashCode);
  }

  T _guard<T>(T Function() fn, T Function() fallback) {
    try {
      return fn();
    } on MapperException catch (e) {
      if (e.isUnsupportedOrUnallowed()) {
        return fallback();
      } else {
        rethrow;
      }
    }
  }
}

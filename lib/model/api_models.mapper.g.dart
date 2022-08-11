import 'package:dart_mappable/dart_mappable.dart';
import 'package:dart_mappable/internals.dart';

import 'api_models.dart';


// === ALL STATICALLY REGISTERED MAPPERS ===

var _mappers = <BaseMapper>{
  // class mappers
  DocumentRequestMapper._(),
  HoverInfoMapper._(),
  DocumentResponseMapper._(),
  IssueLocationMapper._(),
  IssueMapper._(),
  AnalyzeResponseMapper._(),
  // enum mappers
  IssueKindMapper._(),
  // custom mappers
};


// === GENERATED CLASS MAPPERS AND EXTENSIONS ===

class DocumentRequestMapper extends BaseMapper<DocumentRequest> {
  DocumentRequestMapper._();

  @override Function get decoder => decode;
  DocumentRequest decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  DocumentRequest fromMap(Map<String, dynamic> map) => DocumentRequest(Mapper.i.$get(map, 'sources'), Mapper.i.$get(map, 'name'), Mapper.i.$get(map, 'offset'));

  @override Function get encoder => (DocumentRequest v) => encode(v);
  dynamic encode(DocumentRequest v) => toMap(v);
  Map<String, dynamic> toMap(DocumentRequest d) => {'sources': Mapper.i.$enc(d.sources, 'sources'), 'name': Mapper.i.$enc(d.name, 'name'), 'offset': Mapper.i.$enc(d.offset, 'offset')};

  @override String stringify(DocumentRequest self) => 'DocumentRequest(sources: ${Mapper.asString(self.sources)}, name: ${Mapper.asString(self.name)}, offset: ${Mapper.asString(self.offset)})';
  @override int hash(DocumentRequest self) => Mapper.hash(self.sources) ^ Mapper.hash(self.name) ^ Mapper.hash(self.offset);
  @override bool equals(DocumentRequest self, DocumentRequest other) => Mapper.isEqual(self.sources, other.sources) && Mapper.isEqual(self.name, other.name) && Mapper.isEqual(self.offset, other.offset);

  @override Function get typeFactory => (f) => f<DocumentRequest>();
}

extension DocumentRequestMapperExtension  on DocumentRequest {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  DocumentRequestCopyWith<DocumentRequest> get copyWith => DocumentRequestCopyWith(this, $identity);
}

abstract class DocumentRequestCopyWith<$R> {
  factory DocumentRequestCopyWith(DocumentRequest value, Then<DocumentRequest, $R> then) = _DocumentRequestCopyWithImpl<$R>;
  $R call({Map<String, String>? sources, String? name, int? offset});
  $R apply(DocumentRequest Function(DocumentRequest) transform);
}

class _DocumentRequestCopyWithImpl<$R> extends BaseCopyWith<DocumentRequest, $R> implements DocumentRequestCopyWith<$R> {
  _DocumentRequestCopyWithImpl(DocumentRequest value, Then<DocumentRequest, $R> then) : super(value, then);

  @override $R call({Map<String, String>? sources, String? name, int? offset}) => $then(DocumentRequest(sources ?? $value.sources, name ?? $value.name, offset ?? $value.offset));
}

class HoverInfoMapper extends BaseMapper<HoverInfo> {
  HoverInfoMapper._();

  @override Function get decoder => decode;
  HoverInfo decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  HoverInfo fromMap(Map<String, dynamic> map) => HoverInfo(description: Mapper.i.$getOpt(map, 'description'), dartdoc: Mapper.i.$getOpt(map, 'dartdoc'), kind: Mapper.i.$getOpt(map, 'kind'), enclosingClassName: Mapper.i.$getOpt(map, 'enclosingClassName'), libraryName: Mapper.i.$getOpt(map, 'libraryName'), parameters: Mapper.i.$getOpt(map, 'parameters'), deprecated: Mapper.i.$getOpt(map, 'deprecated'), staticType: Mapper.i.$getOpt(map, 'staticType'), propagatedType: Mapper.i.$getOpt(map, 'propagatedType'));

  @override Function get encoder => (HoverInfo v) => encode(v);
  dynamic encode(HoverInfo v) => toMap(v);
  Map<String, dynamic> toMap(HoverInfo h) => {'description': Mapper.i.$enc(h.description, 'description'), 'dartdoc': Mapper.i.$enc(h.dartdoc, 'dartdoc'), 'kind': Mapper.i.$enc(h.kind, 'kind'), 'enclosingClassName': Mapper.i.$enc(h.enclosingClassName, 'enclosingClassName'), 'libraryName': Mapper.i.$enc(h.libraryName, 'libraryName'), 'parameters': Mapper.i.$enc(h.parameters, 'parameters'), 'deprecated': Mapper.i.$enc(h.deprecated, 'deprecated'), 'staticType': Mapper.i.$enc(h.staticType, 'staticType'), 'propagatedType': Mapper.i.$enc(h.propagatedType, 'propagatedType')};

  @override String stringify(HoverInfo self) => 'HoverInfo(description: ${Mapper.asString(self.description)}, kind: ${Mapper.asString(self.kind)}, dartdoc: ${Mapper.asString(self.dartdoc)}, enclosingClassName: ${Mapper.asString(self.enclosingClassName)}, libraryName: ${Mapper.asString(self.libraryName)}, parameters: ${Mapper.asString(self.parameters)}, deprecated: ${Mapper.asString(self.deprecated)}, staticType: ${Mapper.asString(self.staticType)}, propagatedType: ${Mapper.asString(self.propagatedType)})';
  @override int hash(HoverInfo self) => Mapper.hash(self.description) ^ Mapper.hash(self.kind) ^ Mapper.hash(self.dartdoc) ^ Mapper.hash(self.enclosingClassName) ^ Mapper.hash(self.libraryName) ^ Mapper.hash(self.parameters) ^ Mapper.hash(self.deprecated) ^ Mapper.hash(self.staticType) ^ Mapper.hash(self.propagatedType);
  @override bool equals(HoverInfo self, HoverInfo other) => Mapper.isEqual(self.description, other.description) && Mapper.isEqual(self.kind, other.kind) && Mapper.isEqual(self.dartdoc, other.dartdoc) && Mapper.isEqual(self.enclosingClassName, other.enclosingClassName) && Mapper.isEqual(self.libraryName, other.libraryName) && Mapper.isEqual(self.parameters, other.parameters) && Mapper.isEqual(self.deprecated, other.deprecated) && Mapper.isEqual(self.staticType, other.staticType) && Mapper.isEqual(self.propagatedType, other.propagatedType);

  @override Function get typeFactory => (f) => f<HoverInfo>();
}

extension HoverInfoMapperExtension  on HoverInfo {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  HoverInfoCopyWith<HoverInfo> get copyWith => HoverInfoCopyWith(this, $identity);
}

abstract class HoverInfoCopyWith<$R> {
  factory HoverInfoCopyWith(HoverInfo value, Then<HoverInfo, $R> then) = _HoverInfoCopyWithImpl<$R>;
  $R call({String? description, String? dartdoc, String? kind, String? enclosingClassName, String? libraryName, String? parameters, bool? deprecated, String? staticType, String? propagatedType});
  $R apply(HoverInfo Function(HoverInfo) transform);
}

class _HoverInfoCopyWithImpl<$R> extends BaseCopyWith<HoverInfo, $R> implements HoverInfoCopyWith<$R> {
  _HoverInfoCopyWithImpl(HoverInfo value, Then<HoverInfo, $R> then) : super(value, then);

  @override $R call({Object? description = $none, Object? dartdoc = $none, Object? kind = $none, Object? enclosingClassName = $none, Object? libraryName = $none, Object? parameters = $none, Object? deprecated = $none, Object? staticType = $none, Object? propagatedType = $none}) => $then(HoverInfo(description: or(description, $value.description), dartdoc: or(dartdoc, $value.dartdoc), kind: or(kind, $value.kind), enclosingClassName: or(enclosingClassName, $value.enclosingClassName), libraryName: or(libraryName, $value.libraryName), parameters: or(parameters, $value.parameters), deprecated: or(deprecated, $value.deprecated), staticType: or(staticType, $value.staticType), propagatedType: or(propagatedType, $value.propagatedType)));
}

class DocumentResponseMapper extends BaseMapper<DocumentResponse> {
  DocumentResponseMapper._();

  @override Function get decoder => decode;
  DocumentResponse decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  DocumentResponse fromMap(Map<String, dynamic> map) => DocumentResponse(Mapper.i.$get(map, 'info'), Mapper.i.$getOpt(map, 'error'));

  @override Function get encoder => (DocumentResponse v) => encode(v);
  dynamic encode(DocumentResponse v) => toMap(v);
  Map<String, dynamic> toMap(DocumentResponse d) => {'info': Mapper.i.$enc(d.info, 'info'), 'error': Mapper.i.$enc(d.error, 'error')};

  @override String stringify(DocumentResponse self) => 'DocumentResponse(info: ${Mapper.asString(self.info)}, error: ${Mapper.asString(self.error)})';
  @override int hash(DocumentResponse self) => Mapper.hash(self.info) ^ Mapper.hash(self.error);
  @override bool equals(DocumentResponse self, DocumentResponse other) => Mapper.isEqual(self.info, other.info) && Mapper.isEqual(self.error, other.error);

  @override Function get typeFactory => (f) => f<DocumentResponse>();
}

extension DocumentResponseMapperExtension  on DocumentResponse {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  DocumentResponseCopyWith<DocumentResponse> get copyWith => DocumentResponseCopyWith(this, $identity);
}

abstract class DocumentResponseCopyWith<$R> {
  factory DocumentResponseCopyWith(DocumentResponse value, Then<DocumentResponse, $R> then) = _DocumentResponseCopyWithImpl<$R>;
  HoverInfoCopyWith<$R> get info;
  $R call({HoverInfo? info, String? error});
  $R apply(DocumentResponse Function(DocumentResponse) transform);
}

class _DocumentResponseCopyWithImpl<$R> extends BaseCopyWith<DocumentResponse, $R> implements DocumentResponseCopyWith<$R> {
  _DocumentResponseCopyWithImpl(DocumentResponse value, Then<DocumentResponse, $R> then) : super(value, then);

  @override HoverInfoCopyWith<$R> get info => HoverInfoCopyWith($value.info, (v) => call(info: v));
  @override $R call({HoverInfo? info, Object? error = $none}) => $then(DocumentResponse(info ?? $value.info, or(error, $value.error)));
}

class IssueLocationMapper extends BaseMapper<IssueLocation> {
  IssueLocationMapper._();

  @override Function get decoder => decode;
  IssueLocation decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  IssueLocation fromMap(Map<String, dynamic> map) => IssueLocation(startLine: Mapper.i.$get(map, 'startLine'), endLine: Mapper.i.$get(map, 'endLine'), startColumn: Mapper.i.$get(map, 'startColumn'), endColumn: Mapper.i.$get(map, 'endColumn'));

  @override Function get encoder => (IssueLocation v) => encode(v);
  dynamic encode(IssueLocation v) => toMap(v);
  Map<String, dynamic> toMap(IssueLocation i) => {'startLine': Mapper.i.$enc(i.startLine, 'startLine'), 'endLine': Mapper.i.$enc(i.endLine, 'endLine'), 'startColumn': Mapper.i.$enc(i.startColumn, 'startColumn'), 'endColumn': Mapper.i.$enc(i.endColumn, 'endColumn')};

  @override String stringify(IssueLocation self) => 'IssueLocation(startLine: ${Mapper.asString(self.startLine)}, endLine: ${Mapper.asString(self.endLine)}, startColumn: ${Mapper.asString(self.startColumn)}, endColumn: ${Mapper.asString(self.endColumn)})';
  @override int hash(IssueLocation self) => Mapper.hash(self.startLine) ^ Mapper.hash(self.endLine) ^ Mapper.hash(self.startColumn) ^ Mapper.hash(self.endColumn);
  @override bool equals(IssueLocation self, IssueLocation other) => Mapper.isEqual(self.startLine, other.startLine) && Mapper.isEqual(self.endLine, other.endLine) && Mapper.isEqual(self.startColumn, other.startColumn) && Mapper.isEqual(self.endColumn, other.endColumn);

  @override Function get typeFactory => (f) => f<IssueLocation>();
}

extension IssueLocationMapperExtension  on IssueLocation {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  IssueLocationCopyWith<IssueLocation> get copyWith => IssueLocationCopyWith(this, $identity);
}

abstract class IssueLocationCopyWith<$R> {
  factory IssueLocationCopyWith(IssueLocation value, Then<IssueLocation, $R> then) = _IssueLocationCopyWithImpl<$R>;
  $R call({int? startLine, int? endLine, int? startColumn, int? endColumn});
  $R apply(IssueLocation Function(IssueLocation) transform);
}

class _IssueLocationCopyWithImpl<$R> extends BaseCopyWith<IssueLocation, $R> implements IssueLocationCopyWith<$R> {
  _IssueLocationCopyWithImpl(IssueLocation value, Then<IssueLocation, $R> then) : super(value, then);

  @override $R call({int? startLine, int? endLine, int? startColumn, int? endColumn}) => $then(IssueLocation(startLine: startLine ?? $value.startLine, endLine: endLine ?? $value.endLine, startColumn: startColumn ?? $value.startColumn, endColumn: endColumn ?? $value.endColumn));
}

class IssueMapper extends BaseMapper<Issue> {
  IssueMapper._();

  @override Function get decoder => decode;
  Issue decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  Issue fromMap(Map<String, dynamic> map) => Issue(kind: Mapper.i.$get(map, 'kind'), issueLocation: Mapper.i.$get(map, 'issueLocation'), message: Mapper.i.$get(map, 'message'), hasFixes: Mapper.i.$get(map, 'hasFixes'), sourceName: Mapper.i.$get(map, 'sourceName'), correction: Mapper.i.$getOpt(map, 'correction'), url: Mapper.i.$getOpt(map, 'url'));

  @override Function get encoder => (Issue v) => encode(v);
  dynamic encode(Issue v) => toMap(v);
  Map<String, dynamic> toMap(Issue i) => {'kind': Mapper.i.$enc(i.kind, 'kind'), 'issueLocation': Mapper.i.$enc(i.issueLocation, 'issueLocation'), 'message': Mapper.i.$enc(i.message, 'message'), 'hasFixes': Mapper.i.$enc(i.hasFixes, 'hasFixes'), 'sourceName': Mapper.i.$enc(i.sourceName, 'sourceName'), 'correction': Mapper.i.$enc(i.correction, 'correction'), 'url': Mapper.i.$enc(i.url, 'url')};

  @override String stringify(Issue self) => 'Issue(kind: ${Mapper.asString(self.kind)}, issueLocation: ${Mapper.asString(self.issueLocation)}, message: ${Mapper.asString(self.message)}, hasFixes: ${Mapper.asString(self.hasFixes)}, sourceName: ${Mapper.asString(self.sourceName)}, correction: ${Mapper.asString(self.correction)}, url: ${Mapper.asString(self.url)})';
  @override int hash(Issue self) => Mapper.hash(self.kind) ^ Mapper.hash(self.issueLocation) ^ Mapper.hash(self.message) ^ Mapper.hash(self.hasFixes) ^ Mapper.hash(self.sourceName) ^ Mapper.hash(self.correction) ^ Mapper.hash(self.url);
  @override bool equals(Issue self, Issue other) => Mapper.isEqual(self.kind, other.kind) && Mapper.isEqual(self.issueLocation, other.issueLocation) && Mapper.isEqual(self.message, other.message) && Mapper.isEqual(self.hasFixes, other.hasFixes) && Mapper.isEqual(self.sourceName, other.sourceName) && Mapper.isEqual(self.correction, other.correction) && Mapper.isEqual(self.url, other.url);

  @override Function get typeFactory => (f) => f<Issue>();
}

extension IssueMapperExtension  on Issue {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  IssueCopyWith<Issue> get copyWith => IssueCopyWith(this, $identity);
}

abstract class IssueCopyWith<$R> {
  factory IssueCopyWith(Issue value, Then<Issue, $R> then) = _IssueCopyWithImpl<$R>;
  IssueLocationCopyWith<$R> get issueLocation;
  $R call({IssueKind? kind, IssueLocation? issueLocation, String? message, bool? hasFixes, String? sourceName, String? correction, String? url});
  $R apply(Issue Function(Issue) transform);
}

class _IssueCopyWithImpl<$R> extends BaseCopyWith<Issue, $R> implements IssueCopyWith<$R> {
  _IssueCopyWithImpl(Issue value, Then<Issue, $R> then) : super(value, then);

  @override IssueLocationCopyWith<$R> get issueLocation => IssueLocationCopyWith($value.issueLocation, (v) => call(issueLocation: v));
  @override $R call({IssueKind? kind, IssueLocation? issueLocation, String? message, bool? hasFixes, String? sourceName, Object? correction = $none, Object? url = $none}) => $then(Issue(kind: kind ?? $value.kind, issueLocation: issueLocation ?? $value.issueLocation, message: message ?? $value.message, hasFixes: hasFixes ?? $value.hasFixes, sourceName: sourceName ?? $value.sourceName, correction: or(correction, $value.correction), url: or(url, $value.url)));
}

class AnalyzeResponseMapper extends BaseMapper<AnalyzeResponse> {
  AnalyzeResponseMapper._();

  @override Function get decoder => decode;
  AnalyzeResponse decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  AnalyzeResponse fromMap(Map<String, dynamic> map) => AnalyzeResponse(Mapper.i.$getOpt(map, 'issues') ?? const []);

  @override Function get encoder => (AnalyzeResponse v) => encode(v);
  dynamic encode(AnalyzeResponse v) => toMap(v);
  Map<String, dynamic> toMap(AnalyzeResponse a) => {'issues': Mapper.i.$enc(a.issues, 'issues')};

  @override String stringify(AnalyzeResponse self) => 'AnalyzeResponse(issues: ${Mapper.asString(self.issues)})';
  @override int hash(AnalyzeResponse self) => Mapper.hash(self.issues);
  @override bool equals(AnalyzeResponse self, AnalyzeResponse other) => Mapper.isEqual(self.issues, other.issues);

  @override Function get typeFactory => (f) => f<AnalyzeResponse>();
}

extension AnalyzeResponseMapperExtension  on AnalyzeResponse {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  AnalyzeResponseCopyWith<AnalyzeResponse> get copyWith => AnalyzeResponseCopyWith(this, $identity);
}

abstract class AnalyzeResponseCopyWith<$R> {
  factory AnalyzeResponseCopyWith(AnalyzeResponse value, Then<AnalyzeResponse, $R> then) = _AnalyzeResponseCopyWithImpl<$R>;
  ListCopyWith<$R, Issue, IssueCopyWith<$R>> get issues;
  $R call({List<Issue>? issues});
  $R apply(AnalyzeResponse Function(AnalyzeResponse) transform);
}

class _AnalyzeResponseCopyWithImpl<$R> extends BaseCopyWith<AnalyzeResponse, $R> implements AnalyzeResponseCopyWith<$R> {
  _AnalyzeResponseCopyWithImpl(AnalyzeResponse value, Then<AnalyzeResponse, $R> then) : super(value, then);

  @override ListCopyWith<$R, Issue, IssueCopyWith<$R>> get issues => ListCopyWith($value.issues, (v, t) => IssueCopyWith(v, t), (v) => call(issues: v));
  @override $R call({List<Issue>? issues}) => $then(AnalyzeResponse(issues ?? $value.issues));
}


// === GENERATED ENUM MAPPERS AND EXTENSIONS ===

class IssueKindMapper extends EnumMapper<IssueKind> {
  IssueKindMapper._();

  @override  IssueKind decode(dynamic value) {
    switch (value) {
      case 'error': return IssueKind.error;
      case 'warning': return IssueKind.warning;
      case 'info': return IssueKind.info;
      default: throw MapperException.unknownEnumValue(value);
    }
  }

  @override  dynamic encode(IssueKind self) {
    switch (self) {
      case IssueKind.error: return 'error';
      case IssueKind.warning: return 'warning';
      case IssueKind.info: return 'info';
    }
  }
}

extension IssueKindMapperExtension on IssueKind {
  dynamic toValue() => Mapper.toValue(this);
  @Deprecated('Use \'toValue\' instead')
  String toStringValue() => Mapper.toValue(this) as String;
}


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

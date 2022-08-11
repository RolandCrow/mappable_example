
import 'package:dart_mappable/dart_mappable.dart';

@MappableClass()
class DocumentRequest {
  final Map<String, String> sources;
  final String name;
  final int offset;

  DocumentRequest(this.sources, this.name, this.offset);
}

@MappableClass()
class HoverInfo {
  final String? description;
  final String? kind;
  final String? dartdoc;
  final String? enclosingClassName;
  final String? libraryName;
  final String? parameters;
  final bool? deprecated;
  final String? staticType;
  final String? propagatedType;

  HoverInfo({
      this.description,
      this.dartdoc,
      this.kind,
      this.enclosingClassName,
      this.libraryName,
      this.parameters,
      this.deprecated,
      this.staticType,
      this.propagatedType});

}

@MappableClass()
class DocumentResponse {
  final HoverInfo info;
  final String? error;

  DocumentResponse(this.info, this.error);
}

@MappableClass()
class IssueLocation {
  final int startLine, endLine;
  final int startColumn, endColumn;

  IssueLocation({required this.startLine, required this.endLine, required this.startColumn, required this.endColumn});
}

@MappableEnum()
enum IssueKind {error, warning, info}

@MappableClass()
class Issue with Comparable<Issue> {
  final IssueKind kind;
  final IssueLocation issueLocation;
  final String message;
  final bool hasFixes;
  final String sourceName;
  final String? correction;
  final String? url;

  Issue({
    required this.kind,
    required this.issueLocation,
    required this.message,
    required this.hasFixes,
    required this.sourceName,
    this.correction,
    this.url,

});

  @override
  int compareTo(Issue other) {
    return kind.index.compareTo(other.kind.index);
  }
}

@MappableClass()
class AnalyzeResponse {
  final List<Issue> issues;

  AnalyzeResponse([this.issues = const []]);
}











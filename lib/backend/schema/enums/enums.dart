import 'package:collection/collection.dart';

enum ReportVisibilityType {
  All,
  Followers,
  Private,
}

enum LogTye {
  Sit,
  Error,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (ReportVisibilityType):
      return ReportVisibilityType.values.deserialize(value) as T?;
    case (LogTye):
      return LogTye.values.deserialize(value) as T?;
    default:
      return null;
  }
}

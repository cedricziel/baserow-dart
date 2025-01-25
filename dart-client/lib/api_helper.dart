//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class QueryParam {
  const QueryParam(this.name, this.value);

  final String name;
  final String value;

  @override
  String toString() => '${Uri.encodeQueryComponent(name)}=${Uri.encodeQueryComponent(value)}';
}

// Ported from the Java version.
Iterable<QueryParam> _queryParams(String collectionFormat, String name, dynamic value,) {
  // Assertions to run in debug mode only.
  assert(name.isNotEmpty, 'Parameter cannot be an empty string.');

  final params = <QueryParam>[];

  if (value is List) {
    if (collectionFormat == 'multi') {
      return value.map((dynamic v) => QueryParam(name, parameterToString(v)),);
    }

    // Default collection format is 'csv'.
    if (collectionFormat.isEmpty) {
      collectionFormat = 'csv'; // ignore: parameter_assignments
    }

    final delimiter = _delimiters[collectionFormat] ?? ',';

    params.add(QueryParam(name, value.map<dynamic>(parameterToString).join(delimiter),));
  } else if (value != null) {
    params.add(QueryParam(name, parameterToString(value)));
  }

  return params;
}

/// Format the given parameter object into a [String].
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  }
  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }
  if (value is AggregationRawTypeEnum) {
    return AggregationRawTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is AiOutputTypeEnum) {
    return AiOutputTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is AlignmentEnum) {
    return AlignmentEnumTypeTransformer().encode(value).toString();
  }
  if (value is ArrayFormulaTypeEnum) {
    return ArrayFormulaTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is BlankEnum) {
    return BlankEnumTypeTransformer().encode(value).toString();
  }
  if (value is ButtonWidthEnum) {
    return ButtonWidthEnumTypeTransformer().encode(value).toString();
  }
  if (value is ConditionTypeEnum) {
    return ConditionTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is CsvColumnSeparatorEnum) {
    return CsvColumnSeparatorEnumTypeTransformer().encode(value).toString();
  }
  if (value is DateFormatEnum) {
    return DateFormatEnumTypeTransformer().encode(value).toString();
  }
  if (value is DateTimeFormatEnum) {
    return DateTimeFormatEnumTypeTransformer().encode(value).toString();
  }
  if (value is DurationFormatEnum) {
    return DurationFormatEnumTypeTransformer().encode(value).toString();
  }
  if (value is EmailNotificationFrequencyEnum) {
    return EmailNotificationFrequencyEnumTypeTransformer().encode(value).toString();
  }
  if (value is EmailVerificationEnum) {
    return EmailVerificationEnumTypeTransformer().encode(value).toString();
  }
  if (value is EventTypeEnum) {
    return EventTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is EventsEnum) {
    return EventsEnumTypeTransformer().encode(value).toString();
  }
  if (value is ExportCharsetEnum) {
    return ExportCharsetEnumTypeTransformer().encode(value).toString();
  }
  if (value is ExporterTypeEnum) {
    return ExporterTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is FilterActionTypeEnum) {
    return FilterActionTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is FormatEnum) {
    return FormatEnumTypeTransformer().encode(value).toString();
  }
  if (value is FormulaTypeEnum) {
    return FormulaTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is IdEnum) {
    return IdEnumTypeTransformer().encode(value).toString();
  }
  if (value is ImageConstraintEnum) {
    return ImageConstraintEnumTypeTransformer().encode(value).toString();
  }
  if (value is ImageSourceTypeEnum) {
    return ImageSourceTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is InputTypeEnum) {
    return InputTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is Mode51eEnum) {
    return Mode51eEnumTypeTransformer().encode(value).toString();
  }
  if (value is Mode884Enum) {
    return Mode884EnumTypeTransformer().encode(value).toString();
  }
  if (value is NavigationTypeEnum) {
    return NavigationTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is NullEnum) {
    return NullEnumTypeTransformer().encode(value).toString();
  }
  if (value is NumberDecimalPlacesEnum) {
    return NumberDecimalPlacesEnumTypeTransformer().encode(value).toString();
  }
  if (value is NumberSeparatorEnum) {
    return NumberSeparatorEnumTypeTransformer().encode(value).toString();
  }
  if (value is OptionTypeEnum) {
    return OptionTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is OrderByEnum) {
    return OrderByEnumTypeTransformer().encode(value).toString();
  }
  if (value is OrderEnum) {
    return OrderEnumTypeTransformer().encode(value).toString();
  }
  if (value is OrientationEnum) {
    return OrientationEnumTypeTransformer().encode(value).toString();
  }
  if (value is OwnershipTypeEnum) {
    return OwnershipTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is PageBackgroundModeEnum) {
    return PageBackgroundModeEnumTypeTransformer().encode(value).toString();
  }
  if (value is PathParamTypeEnum) {
    return PathParamTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is PostgresqlSslmodeEnum) {
    return PostgresqlSslmodeEnumTypeTransformer().encode(value).toString();
  }
  if (value is RequestMethodEnum) {
    return RequestMethodEnumTypeTransformer().encode(value).toString();
  }
  if (value is RoleTypeEnum) {
    return RoleTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is RowCommentsNotificationModeEnum) {
    return RowCommentsNotificationModeEnumTypeTransformer().encode(value).toString();
  }
  if (value is RowHeightSizeEnum) {
    return RowHeightSizeEnumTypeTransformer().encode(value).toString();
  }
  if (value is RowIdentifierTypeEnum) {
    return RowIdentifierTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is ScopeTypeEnum) {
    return ScopeTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is ShareTypeEnum) {
    return ShareTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is SourceTypeEnum) {
    return SourceTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is StateEnum) {
    return StateEnumTypeTransformer().encode(value).toString();
  }
  if (value is StyleBackgroundEnum) {
    return StyleBackgroundEnumTypeTransformer().encode(value).toString();
  }
  if (value is StyleBackgroundModeEnum) {
    return StyleBackgroundModeEnumTypeTransformer().encode(value).toString();
  }
  if (value is StyleEnum) {
    return StyleEnumTypeTransformer().encode(value).toString();
  }
  if (value is StyleWidthEnum) {
    return StyleWidthEnumTypeTransformer().encode(value).toString();
  }
  if (value is SubjectType0b2Enum) {
    return SubjectType0b2EnumTypeTransformer().encode(value).toString();
  }
  if (value is SubjectType398Enum) {
    return SubjectType398EnumTypeTransformer().encode(value).toString();
  }
  if (value is SubmitActionEnum) {
    return SubmitActionEnumTypeTransformer().encode(value).toString();
  }
  if (value is TableCellAlignmentEnum) {
    return TableCellAlignmentEnumTypeTransformer().encode(value).toString();
  }
  if (value is TargetEnum) {
    return TargetEnumTypeTransformer().encode(value).toString();
  }
  if (value is TimeFormatEnum) {
    return TimeFormatEnumTypeTransformer().encode(value).toString();
  }
  if (value is TimescaleEnum) {
    return TimescaleEnumTypeTransformer().encode(value).toString();
  }
  if (value is TrashItemTypeEnum) {
    return TrashItemTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is Type050Enum) {
    return Type050EnumTypeTransformer().encode(value).toString();
  }
  if (value is Type051Enum) {
    return Type051EnumTypeTransformer().encode(value).toString();
  }
  if (value is Type2e6Enum) {
    return Type2e6EnumTypeTransformer().encode(value).toString();
  }
  if (value is Type40dEnum) {
    return Type40dEnumTypeTransformer().encode(value).toString();
  }
  if (value is Type509Enum) {
    return Type509EnumTypeTransformer().encode(value).toString();
  }
  if (value is Type622Enum) {
    return Type622EnumTypeTransformer().encode(value).toString();
  }
  if (value is Type6ebEnum) {
    return Type6ebEnumTypeTransformer().encode(value).toString();
  }
  if (value is Type8b0Enum) {
    return Type8b0EnumTypeTransformer().encode(value).toString();
  }
  if (value is Type99fEnum) {
    return Type99fEnumTypeTransformer().encode(value).toString();
  }
  if (value is Type9c4Enum) {
    return Type9c4EnumTypeTransformer().encode(value).toString();
  }
  if (value is TypeBc4Enum) {
    return TypeBc4EnumTypeTransformer().encode(value).toString();
  }
  if (value is TypeD46Enum) {
    return TypeD46EnumTypeTransformer().encode(value).toString();
  }
  if (value is TypeD53Enum) {
    return TypeD53EnumTypeTransformer().encode(value).toString();
  }
  if (value is ValidationTypeEnum) {
    return ValidationTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is ValueProviderTypeEnum) {
    return ValueProviderTypeEnumTypeTransformer().encode(value).toString();
  }
  if (value is VariantEnum) {
    return VariantEnumTypeTransformer().encode(value).toString();
  }
  if (value is Visibility789Enum) {
    return Visibility789EnumTypeTransformer().encode(value).toString();
  }
  if (value is VisibilityC5fEnum) {
    return VisibilityC5fEnumTypeTransformer().encode(value).toString();
  }
  return value.toString();
}

/// Returns the decoded body as UTF-8 if the given headers indicate an 'application/json'
/// content type. Otherwise, returns the decoded body as decoded by dart:http package.
Future<String> _decodeBodyBytes(Response response) async {
  final contentType = response.headers['content-type'];
  return contentType != null && contentType.toLowerCase().startsWith('application/json')
    ? response.bodyBytes.isEmpty ? '' : utf8.decode(response.bodyBytes)
    : response.body;
}

/// Returns a valid [T] value found at the specified Map [key], null otherwise.
T? mapValueOfType<T>(dynamic map, String key) {
  final dynamic value = map is Map ? map[key] : null;
  if (T == double && value is int) {
    return value.toDouble() as T;
  }
  return value is T ? value : null;
}

/// Returns a valid Map<K, V> found at the specified Map [key], null otherwise.
Map<K, V>? mapCastOfType<K, V>(dynamic map, String key) {
  final dynamic value = map is Map ? map[key] : null;
  return value is Map ? value.cast<K, V>() : null;
}

/// Returns a valid [DateTime] found at the specified Map [key], null otherwise.
DateTime? mapDateTime(dynamic map, String key, [String? pattern]) {
  final dynamic value = map is Map ? map[key] : null;
  if (value != null) {
    int? millis;
    if (value is int) {
      millis = value;
    } else if (value is String) {
      if (_isEpochMarker(pattern)) {
        millis = int.tryParse(value);
      } else {
        return DateTime.tryParse(value);
      }
    }
    if (millis != null) {
      return DateTime.fromMillisecondsSinceEpoch(millis, isUtc: true);
    }
  }
  return null;
}

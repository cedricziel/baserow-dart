//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ModelExport {
  /// Returns a new [ModelExport] instance.
  ModelExport({
    this.viewId,
    required this.exporterType,
    this.exportCharset = ExportCharsetEnum.utf8,
    this.csvColumnSeparator = CsvColumnSeparatorEnum.comma,
    this.csvIncludeHeader = true,
    this.excelIncludeHeader = true,
  });

  /// Optional: The view for this table to export using its filters, sorts and other view specific settings.
  ///
  /// Minimum value: 0
  int? viewId;

  /// The file type to export to.  * `csv` - csv * `json` - json * `xml` - xml * `excel` - excel
  ExporterTypeEnum exporterType;

  /// The character set to use when creating the export file.  * `utf-8` - utf-8 * `iso-8859-6` - iso-8859-6 * `windows-1256` - windows-1256 * `iso-8859-4` - iso-8859-4 * `windows-1257` - windows-1257 * `iso-8859-14` - iso-8859-14 * `iso-8859-2` - iso-8859-2 * `windows-1250` - windows-1250 * `gbk` - gbk * `gb18030` - gb18030 * `big5` - big5 * `koi8-r` - koi8-r * `koi8-u` - koi8-u * `iso-8859-5` - iso-8859-5 * `windows-1251` - windows-1251 * `x-mac-cyrillic` - mac-cyrillic * `iso-8859-7` - iso-8859-7 * `windows-1253` - windows-1253 * `iso-8859-8` - iso-8859-8 * `windows-1255` - windows-1255 * `euc-jp` - euc-jp * `iso-2022-jp` - iso-2022-jp * `shift-jis` - shift-jis * `euc-kr` - euc-kr * `macintosh` - macintosh * `iso-8859-10` - iso-8859-10 * `iso-8859-16` - iso-8859-16 * `windows-874` - cp874 * `windows-1254` - windows-1254 * `windows-1258` - windows-1258 * `iso-8859-1` - iso-8859-1 * `windows-1252` - windows-1252 * `iso-8859-3` - iso-8859-3
  ExportCharsetEnum exportCharset;

  /// The value used to separate columns in the resulting csv file.  * `,` - , * `;` - ; * `|` - | * `tab` -   * `record_separator` -  * `unit_separator` - 
  CsvColumnSeparatorEnum csvColumnSeparator;

  /// Whether or not to generate a header row at the top of the csv file.
  bool csvIncludeHeader;

  /// Whether or not to generate the field names as header row at the top of the Excel file.
  bool excelIncludeHeader;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelExport &&
    other.viewId == viewId &&
    other.exporterType == exporterType &&
    other.exportCharset == exportCharset &&
    other.csvColumnSeparator == csvColumnSeparator &&
    other.csvIncludeHeader == csvIncludeHeader &&
    other.excelIncludeHeader == excelIncludeHeader;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (viewId == null ? 0 : viewId!.hashCode) +
    (exporterType.hashCode) +
    (exportCharset.hashCode) +
    (csvColumnSeparator.hashCode) +
    (csvIncludeHeader.hashCode) +
    (excelIncludeHeader.hashCode);

  @override
  String toString() => 'ModelExport[viewId=$viewId, exporterType=$exporterType, exportCharset=$exportCharset, csvColumnSeparator=$csvColumnSeparator, csvIncludeHeader=$csvIncludeHeader, excelIncludeHeader=$excelIncludeHeader]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.viewId != null) {
      json[r'view_id'] = this.viewId;
    } else {
      json[r'view_id'] = null;
    }
      json[r'exporter_type'] = this.exporterType;
      json[r'export_charset'] = this.exportCharset;
      json[r'csv_column_separator'] = this.csvColumnSeparator;
      json[r'csv_include_header'] = this.csvIncludeHeader;
      json[r'excel_include_header'] = this.excelIncludeHeader;
    return json;
  }

  /// Returns a new [ModelExport] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelExport? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelExport[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelExport[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelExport(
        viewId: mapValueOfType<int>(json, r'view_id'),
        exporterType: ExporterTypeEnum.fromJson(json[r'exporter_type'])!,
        exportCharset: ExportCharsetEnum.fromJson(json[r'export_charset']) ?? ExportCharsetEnum.utf8,
        csvColumnSeparator: CsvColumnSeparatorEnum.fromJson(json[r'csv_column_separator']) ?? CsvColumnSeparatorEnum.comma,
        csvIncludeHeader: mapValueOfType<bool>(json, r'csv_include_header') ?? true,
        excelIncludeHeader: mapValueOfType<bool>(json, r'excel_include_header') ?? true,
      );
    }
    return null;
  }

  static List<ModelExport> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelExport>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelExport.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelExport> mapFromJson(dynamic json) {
    final map = <String, ModelExport>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelExport.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelExport-objects as value to a dart map
  static Map<String, List<ModelExport>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelExport>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelExport.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'exporter_type',
  };
}


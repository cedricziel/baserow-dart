//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class BuilderWorkflowActionTypeBuilderWorkflowAction {
  /// Returns a new [BuilderWorkflowActionTypeBuilderWorkflowAction] instance.
  BuilderWorkflowActionTypeBuilderWorkflowAction({
    required this.id,
    required this.order,
    required this.elementId,
    required this.type,
    required this.event,
    this.title = '',
    this.description = '',
    this.navigationType,
    this.navigateToPageId,
    this.navigateToUrl = '',
    this.pageParameters = const [],
    this.target,
    required this.service,
    this.dataSourceId,
  });

  int id;

  /// Minimum value: 0
  /// Maximum value: 2147483647
  int order;

  int? elementId;

  /// The type of the workflow action
  String type;

  /// The event that triggers the execution
  String event;

  /// The title of the notification. Must be an formula.
  String title;

  /// The description of the notification. Must be an formula.
  String description;

  /// The navigation type.  * `page` - Page * `custom` - Custom
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NavigationTypeEnum? navigationType;

  /// ('Destination page id for this link. If null then we use the navigate_to_url property instead.',)
  int? navigateToPageId;

  /// If no page is selected, this indicate the destination of the link.
  String navigateToUrl;

  /// The parameters for each parameters of the selected page if any.
  List<PageParameterValue> pageParameters;

  /// The target of the link when we click on it.  * `self` - Self * `blank` - Blank
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TargetEnum? target;

  /// The service which this workflow action is associated with.
  IntegrationServiceService service;

  /// The ID of the Data Source to be refreshed.
  int? dataSourceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BuilderWorkflowActionTypeBuilderWorkflowAction &&
    other.id == id &&
    other.order == order &&
    other.elementId == elementId &&
    other.type == type &&
    other.event == event &&
    other.title == title &&
    other.description == description &&
    other.navigationType == navigationType &&
    other.navigateToPageId == navigateToPageId &&
    other.navigateToUrl == navigateToUrl &&
    _deepEquality.equals(other.pageParameters, pageParameters) &&
    other.target == target &&
    other.service == service &&
    other.dataSourceId == dataSourceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (order.hashCode) +
    (elementId == null ? 0 : elementId!.hashCode) +
    (type.hashCode) +
    (event.hashCode) +
    (title.hashCode) +
    (description.hashCode) +
    (navigationType == null ? 0 : navigationType!.hashCode) +
    (navigateToPageId == null ? 0 : navigateToPageId!.hashCode) +
    (navigateToUrl.hashCode) +
    (pageParameters.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (service.hashCode) +
    (dataSourceId == null ? 0 : dataSourceId!.hashCode);

  @override
  String toString() => 'BuilderWorkflowActionTypeBuilderWorkflowAction[id=$id, order=$order, elementId=$elementId, type=$type, event=$event, title=$title, description=$description, navigationType=$navigationType, navigateToPageId=$navigateToPageId, navigateToUrl=$navigateToUrl, pageParameters=$pageParameters, target=$target, service=$service, dataSourceId=$dataSourceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'order'] = this.order;
    if (this.elementId != null) {
      json[r'element_id'] = this.elementId;
    } else {
      json[r'element_id'] = null;
    }
      json[r'type'] = this.type;
      json[r'event'] = this.event;
      json[r'title'] = this.title;
      json[r'description'] = this.description;
    if (this.navigationType != null) {
      json[r'navigation_type'] = this.navigationType;
    } else {
      json[r'navigation_type'] = null;
    }
    if (this.navigateToPageId != null) {
      json[r'navigate_to_page_id'] = this.navigateToPageId;
    } else {
      json[r'navigate_to_page_id'] = null;
    }
      json[r'navigate_to_url'] = this.navigateToUrl;
      json[r'page_parameters'] = this.pageParameters;
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
      json[r'service'] = this.service;
    if (this.dataSourceId != null) {
      json[r'data_source_id'] = this.dataSourceId;
    } else {
      json[r'data_source_id'] = null;
    }
    return json;
  }

  /// Returns a new [BuilderWorkflowActionTypeBuilderWorkflowAction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuilderWorkflowActionTypeBuilderWorkflowAction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BuilderWorkflowActionTypeBuilderWorkflowAction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BuilderWorkflowActionTypeBuilderWorkflowAction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BuilderWorkflowActionTypeBuilderWorkflowAction(
        id: mapValueOfType<int>(json, r'id')!,
        order: mapValueOfType<int>(json, r'order')!,
        elementId: mapValueOfType<int>(json, r'element_id'),
        type: mapValueOfType<String>(json, r'type')!,
        event: mapValueOfType<String>(json, r'event')!,
        title: mapValueOfType<String>(json, r'title') ?? '',
        description: mapValueOfType<String>(json, r'description') ?? '',
        navigationType: NavigationTypeEnum.fromJson(json[r'navigation_type']),
        navigateToPageId: mapValueOfType<int>(json, r'navigate_to_page_id'),
        navigateToUrl: mapValueOfType<String>(json, r'navigate_to_url') ?? '',
        pageParameters: PageParameterValue.listFromJson(json[r'page_parameters']),
        target: TargetEnum.fromJson(json[r'target']),
        service: IntegrationServiceService.fromJson(json[r'service'])!,
        dataSourceId: mapValueOfType<int>(json, r'data_source_id'),
      );
    }
    return null;
  }

  static List<BuilderWorkflowActionTypeBuilderWorkflowAction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BuilderWorkflowActionTypeBuilderWorkflowAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuilderWorkflowActionTypeBuilderWorkflowAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuilderWorkflowActionTypeBuilderWorkflowAction> mapFromJson(dynamic json) {
    final map = <String, BuilderWorkflowActionTypeBuilderWorkflowAction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuilderWorkflowActionTypeBuilderWorkflowAction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuilderWorkflowActionTypeBuilderWorkflowAction-objects as value to a dart map
  static Map<String, List<BuilderWorkflowActionTypeBuilderWorkflowAction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BuilderWorkflowActionTypeBuilderWorkflowAction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuilderWorkflowActionTypeBuilderWorkflowAction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'order',
    'element_id',
    'type',
    'event',
    'service',
  };
}


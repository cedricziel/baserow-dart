//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedViewUpdateView {
  /// Returns a new [PatchedViewUpdateView] instance.
  PatchedViewUpdateView({
    this.name,
    this.filterType,
    this.filtersDisabled,
    this.publicViewPassword,
    this.ownershipType,
    this.rowIdentifierType,
    this.rowHeightSize,
    this.public,
    required this.slug,
    this.cardCoverImageField,
    this.title,
    this.description,
    this.mode,
    this.coverImage,
    this.logoImage,
    this.submitText,
    this.submitAction,
    this.submitActionMessage,
    this.submitActionRedirectUrl,
    required this.receiveNotificationOnSubmit,
    this.singleSelectField,
    this.dateField,
    required this.icalFeedUrl,
    this.icalPublic,
    this.startDateField,
    this.endDateField,
    this.timescale,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Indicates whether all the rows should apply to all filters (AND) or to any filter (OR).  * `AND` - And * `OR` - Or
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConditionTypeEnum? filterType;

  /// Allows users to see results unfiltered while still keeping the filters saved for the view.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? filtersDisabled;

  /// The new password or an empty string to remove any previous password from the view and make it publicly accessible again.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicViewPassword;

  /// Indicates how the access to the view is determined. By default, views are collaborative and shared for all users that have access to the table.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ownershipType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RowIdentifierTypeEnum? rowIdentifierType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RowHeightSizeEnum? rowHeightSize;

  /// Indicates whether the view is publicly accessible to visitors.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  /// The unique slug that can be used to construct a public URL.
  String slug;

  /// References a file field of which the first image must be shown as card cover image.
  int? cardCoverImageField;

  /// The title that is displayed at the beginning of the form.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// The description that is displayed at the beginning of the form.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Configurable mode of the form.  * `form` - form * `survey` - survey
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Mode51eEnum? mode;

  /// The cover image that must be displayed at the top of the form.
  UserFile? coverImage;

  /// The logo image that must be displayed at the top of the form.
  UserFile? logoImage;

  /// The text displayed on the submit button.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? submitText;

  /// The action that must be performed after the visitor has filled out the form.  * `MESSAGE` - Message * `REDIRECT` - Redirect
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SubmitActionEnum? submitAction;

  /// If the `submit_action` is MESSAGE, then this message will be shown to the visitor after submitting the form.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? submitActionMessage;

  /// If the `submit_action` is REDIRECT,then the visitors will be redirected to the this URL after submitting the form.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? submitActionRedirectUrl;

  /// A boolean indicating if the current user should be notified when the form is submitted.
  bool receiveNotificationOnSubmit;

  int? singleSelectField;

  int? dateField;

  /// Read-only field with ICal feed endpoint. Note: this url will not be active if ical_public value is set to False.
  String icalFeedUrl;

  /// A flag to show if ical feed is exposed. Set this field to True when modifying this resource to enable ICal feed url.
  bool? icalPublic;

  int? startDateField;

  int? endDateField;

  /// The timescale that the timeline should be displayed in.  * `day` - Day * `week` - Week * `month` - Month * `year` - Year
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TimescaleEnum? timescale;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedViewUpdateView &&
    other.name == name &&
    other.filterType == filterType &&
    other.filtersDisabled == filtersDisabled &&
    other.publicViewPassword == publicViewPassword &&
    other.ownershipType == ownershipType &&
    other.rowIdentifierType == rowIdentifierType &&
    other.rowHeightSize == rowHeightSize &&
    other.public == public &&
    other.slug == slug &&
    other.cardCoverImageField == cardCoverImageField &&
    other.title == title &&
    other.description == description &&
    other.mode == mode &&
    other.coverImage == coverImage &&
    other.logoImage == logoImage &&
    other.submitText == submitText &&
    other.submitAction == submitAction &&
    other.submitActionMessage == submitActionMessage &&
    other.submitActionRedirectUrl == submitActionRedirectUrl &&
    other.receiveNotificationOnSubmit == receiveNotificationOnSubmit &&
    other.singleSelectField == singleSelectField &&
    other.dateField == dateField &&
    other.icalFeedUrl == icalFeedUrl &&
    other.icalPublic == icalPublic &&
    other.startDateField == startDateField &&
    other.endDateField == endDateField &&
    other.timescale == timescale;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (filterType == null ? 0 : filterType!.hashCode) +
    (filtersDisabled == null ? 0 : filtersDisabled!.hashCode) +
    (publicViewPassword == null ? 0 : publicViewPassword!.hashCode) +
    (ownershipType == null ? 0 : ownershipType!.hashCode) +
    (rowIdentifierType == null ? 0 : rowIdentifierType!.hashCode) +
    (rowHeightSize == null ? 0 : rowHeightSize!.hashCode) +
    (public == null ? 0 : public!.hashCode) +
    (slug.hashCode) +
    (cardCoverImageField == null ? 0 : cardCoverImageField!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (mode == null ? 0 : mode!.hashCode) +
    (coverImage == null ? 0 : coverImage!.hashCode) +
    (logoImage == null ? 0 : logoImage!.hashCode) +
    (submitText == null ? 0 : submitText!.hashCode) +
    (submitAction == null ? 0 : submitAction!.hashCode) +
    (submitActionMessage == null ? 0 : submitActionMessage!.hashCode) +
    (submitActionRedirectUrl == null ? 0 : submitActionRedirectUrl!.hashCode) +
    (receiveNotificationOnSubmit.hashCode) +
    (singleSelectField == null ? 0 : singleSelectField!.hashCode) +
    (dateField == null ? 0 : dateField!.hashCode) +
    (icalFeedUrl.hashCode) +
    (icalPublic == null ? 0 : icalPublic!.hashCode) +
    (startDateField == null ? 0 : startDateField!.hashCode) +
    (endDateField == null ? 0 : endDateField!.hashCode) +
    (timescale == null ? 0 : timescale!.hashCode);

  @override
  String toString() => 'PatchedViewUpdateView[name=$name, filterType=$filterType, filtersDisabled=$filtersDisabled, publicViewPassword=$publicViewPassword, ownershipType=$ownershipType, rowIdentifierType=$rowIdentifierType, rowHeightSize=$rowHeightSize, public=$public, slug=$slug, cardCoverImageField=$cardCoverImageField, title=$title, description=$description, mode=$mode, coverImage=$coverImage, logoImage=$logoImage, submitText=$submitText, submitAction=$submitAction, submitActionMessage=$submitActionMessage, submitActionRedirectUrl=$submitActionRedirectUrl, receiveNotificationOnSubmit=$receiveNotificationOnSubmit, singleSelectField=$singleSelectField, dateField=$dateField, icalFeedUrl=$icalFeedUrl, icalPublic=$icalPublic, startDateField=$startDateField, endDateField=$endDateField, timescale=$timescale]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.filterType != null) {
      json[r'filter_type'] = this.filterType;
    } else {
      json[r'filter_type'] = null;
    }
    if (this.filtersDisabled != null) {
      json[r'filters_disabled'] = this.filtersDisabled;
    } else {
      json[r'filters_disabled'] = null;
    }
    if (this.publicViewPassword != null) {
      json[r'public_view_password'] = this.publicViewPassword;
    } else {
      json[r'public_view_password'] = null;
    }
    if (this.ownershipType != null) {
      json[r'ownership_type'] = this.ownershipType;
    } else {
      json[r'ownership_type'] = null;
    }
    if (this.rowIdentifierType != null) {
      json[r'row_identifier_type'] = this.rowIdentifierType;
    } else {
      json[r'row_identifier_type'] = null;
    }
    if (this.rowHeightSize != null) {
      json[r'row_height_size'] = this.rowHeightSize;
    } else {
      json[r'row_height_size'] = null;
    }
    if (this.public != null) {
      json[r'public'] = this.public;
    } else {
      json[r'public'] = null;
    }
      json[r'slug'] = this.slug;
    if (this.cardCoverImageField != null) {
      json[r'card_cover_image_field'] = this.cardCoverImageField;
    } else {
      json[r'card_cover_image_field'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
    if (this.coverImage != null) {
      json[r'cover_image'] = this.coverImage;
    } else {
      json[r'cover_image'] = null;
    }
    if (this.logoImage != null) {
      json[r'logo_image'] = this.logoImage;
    } else {
      json[r'logo_image'] = null;
    }
    if (this.submitText != null) {
      json[r'submit_text'] = this.submitText;
    } else {
      json[r'submit_text'] = null;
    }
    if (this.submitAction != null) {
      json[r'submit_action'] = this.submitAction;
    } else {
      json[r'submit_action'] = null;
    }
    if (this.submitActionMessage != null) {
      json[r'submit_action_message'] = this.submitActionMessage;
    } else {
      json[r'submit_action_message'] = null;
    }
    if (this.submitActionRedirectUrl != null) {
      json[r'submit_action_redirect_url'] = this.submitActionRedirectUrl;
    } else {
      json[r'submit_action_redirect_url'] = null;
    }
      json[r'receive_notification_on_submit'] = this.receiveNotificationOnSubmit;
    if (this.singleSelectField != null) {
      json[r'single_select_field'] = this.singleSelectField;
    } else {
      json[r'single_select_field'] = null;
    }
    if (this.dateField != null) {
      json[r'date_field'] = this.dateField;
    } else {
      json[r'date_field'] = null;
    }
      json[r'ical_feed_url'] = this.icalFeedUrl;
    if (this.icalPublic != null) {
      json[r'ical_public'] = this.icalPublic;
    } else {
      json[r'ical_public'] = null;
    }
    if (this.startDateField != null) {
      json[r'start_date_field'] = this.startDateField;
    } else {
      json[r'start_date_field'] = null;
    }
    if (this.endDateField != null) {
      json[r'end_date_field'] = this.endDateField;
    } else {
      json[r'end_date_field'] = null;
    }
    if (this.timescale != null) {
      json[r'timescale'] = this.timescale;
    } else {
      json[r'timescale'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedViewUpdateView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedViewUpdateView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedViewUpdateView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedViewUpdateView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedViewUpdateView(
        name: mapValueOfType<String>(json, r'name'),
        filterType: ConditionTypeEnum.fromJson(json[r'filter_type']),
        filtersDisabled: mapValueOfType<bool>(json, r'filters_disabled'),
        publicViewPassword: mapValueOfType<String>(json, r'public_view_password'),
        ownershipType: mapValueOfType<String>(json, r'ownership_type'),
        rowIdentifierType: RowIdentifierTypeEnum.fromJson(json[r'row_identifier_type']),
        rowHeightSize: RowHeightSizeEnum.fromJson(json[r'row_height_size']),
        public: mapValueOfType<bool>(json, r'public'),
        slug: mapValueOfType<String>(json, r'slug')!,
        cardCoverImageField: mapValueOfType<int>(json, r'card_cover_image_field'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        mode: Mode51eEnum.fromJson(json[r'mode']),
        coverImage: UserFile.fromJson(json[r'cover_image']),
        logoImage: UserFile.fromJson(json[r'logo_image']),
        submitText: mapValueOfType<String>(json, r'submit_text'),
        submitAction: SubmitActionEnum.fromJson(json[r'submit_action']),
        submitActionMessage: mapValueOfType<String>(json, r'submit_action_message'),
        submitActionRedirectUrl: mapValueOfType<String>(json, r'submit_action_redirect_url'),
        receiveNotificationOnSubmit: mapValueOfType<bool>(json, r'receive_notification_on_submit')!,
        singleSelectField: mapValueOfType<int>(json, r'single_select_field'),
        dateField: mapValueOfType<int>(json, r'date_field'),
        icalFeedUrl: mapValueOfType<String>(json, r'ical_feed_url')!,
        icalPublic: mapValueOfType<bool>(json, r'ical_public'),
        startDateField: mapValueOfType<int>(json, r'start_date_field'),
        endDateField: mapValueOfType<int>(json, r'end_date_field'),
        timescale: TimescaleEnum.fromJson(json[r'timescale']),
      );
    }
    return null;
  }

  static List<PatchedViewUpdateView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedViewUpdateView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedViewUpdateView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedViewUpdateView> mapFromJson(dynamic json) {
    final map = <String, PatchedViewUpdateView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedViewUpdateView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedViewUpdateView-objects as value to a dart map
  static Map<String, List<PatchedViewUpdateView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedViewUpdateView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedViewUpdateView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'slug',
    'receive_notification_on_submit',
    'ical_feed_url',
  };
}


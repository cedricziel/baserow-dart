//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TableElementElement {
  /// Returns a new [TableElementElement] instance.
  TableElementElement({
    required this.id,
    required this.pageId,
    required this.type,
    required this.order,
    required this.parentElementId,
    this.placeInContainer,
    this.visibility,
    this.styles,
    this.styleBorderTopColor,
    this.styleBorderTopSize,
    this.stylePaddingTop,
    this.styleMarginTop,
    this.styleBorderBottomColor,
    this.styleBorderBottomSize,
    this.stylePaddingBottom,
    this.styleMarginBottom,
    this.styleBorderLeftColor,
    this.styleBorderLeftSize,
    this.stylePaddingLeft,
    this.styleMarginLeft,
    this.styleBorderRightColor,
    this.styleBorderRightSize,
    this.stylePaddingRight,
    this.styleMarginRight,
    this.styleBackground,
    this.styleBackgroundColor,
    this.styleBackgroundFile,
    this.styleBackgroundMode,
    this.styleWidth,
    this.roleType,
    this.roles,
    this.schemaProperty,
    this.dataSourceId,
    this.itemsPerPage = 20,
    this.buttonLoadMoreLabel = '',
    this.propertyOptions = const [],
    this.isPubliclySortable = true,
    this.isPubliclyFilterable = true,
    this.isPubliclySearchable = true,
    this.fields = const [],
    this.orientation,
  });

  int id;

  int pageId;

  /// The type of the element.
  String type;

  /// Lowest first.
  double order;

  /// The parent element, if inside a container.
  int? parentElementId;

  /// The place in the container.
  String? placeInContainer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Visibility789Enum? visibility;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ButtonTableConfigBlock? styles;

  /// Top border color.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? styleBorderTopColor;

  /// Pixel height of the top border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleBorderTopSize;

  /// Padding size of the top border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stylePaddingTop;

  /// Margin size of the top border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleMarginTop;

  /// Bottom border color
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? styleBorderBottomColor;

  /// Pixel height of the bottom border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleBorderBottomSize;

  /// Padding size of the bottom border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stylePaddingBottom;

  /// Margin size of the bottom border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleMarginBottom;

  /// Left border color
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? styleBorderLeftColor;

  /// Pixel height of the left border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleBorderLeftSize;

  /// Padding size of the left border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stylePaddingLeft;

  /// Margin size of the left border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleMarginLeft;

  /// Right border color
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? styleBorderRightColor;

  /// Pixel height of the right border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleBorderRightSize;

  /// Padding size of the right border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stylePaddingRight;

  /// Margin size of the right border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleMarginRight;

  /// What type of background the element should have.  * `none` - None * `color` - Color * `image` - Image
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StyleBackgroundEnum? styleBackground;

  /// The background color if `style_background` is color.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? styleBackgroundColor;

  /// The background image file
  UserFile? styleBackgroundFile;

  /// The mode of the background image  * `tile` - Tile * `fill` - Fill * `fit` - Fit
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StyleBackgroundModeEnum? styleBackgroundMode;

  /// Indicates the width of the element.  * `full` - Full * `full-width` - Full Width * `normal` - Normal * `medium` - Medium * `small` - Small
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StyleWidthEnum? styleWidth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RoleTypeEnum? roleType;

  /// User roles associated with this element, used in conjunction with role_type.
  Object? roles;

  /// A multiple valued schema property to use for the data source.
  String? schemaProperty;

  /// The data source we want to show in the element for. Only data_sources that return list are allowed.
  int? dataSourceId;

  /// The amount item loaded with each page.
  int itemsPerPage;

  /// The label of the show more button
  String buttonLoadMoreLabel;

  /// The schema property options that can be set for the collection element.
  List<CollectionElementPropertyOptions> propertyOptions;

  /// Whether this collection element is publicly sortable.
  bool isPubliclySortable;

  /// Whether this collection element is publicly filterable.
  bool isPubliclyFilterable;

  /// Whether this collection element is publicly searchable.
  bool isPubliclySearchable;

  List<CollectionField> fields;

  /// The table orientation (horizontal or vertical) for each device type
  Object? orientation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TableElementElement &&
    other.id == id &&
    other.pageId == pageId &&
    other.type == type &&
    other.order == order &&
    other.parentElementId == parentElementId &&
    other.placeInContainer == placeInContainer &&
    other.visibility == visibility &&
    other.styles == styles &&
    other.styleBorderTopColor == styleBorderTopColor &&
    other.styleBorderTopSize == styleBorderTopSize &&
    other.stylePaddingTop == stylePaddingTop &&
    other.styleMarginTop == styleMarginTop &&
    other.styleBorderBottomColor == styleBorderBottomColor &&
    other.styleBorderBottomSize == styleBorderBottomSize &&
    other.stylePaddingBottom == stylePaddingBottom &&
    other.styleMarginBottom == styleMarginBottom &&
    other.styleBorderLeftColor == styleBorderLeftColor &&
    other.styleBorderLeftSize == styleBorderLeftSize &&
    other.stylePaddingLeft == stylePaddingLeft &&
    other.styleMarginLeft == styleMarginLeft &&
    other.styleBorderRightColor == styleBorderRightColor &&
    other.styleBorderRightSize == styleBorderRightSize &&
    other.stylePaddingRight == stylePaddingRight &&
    other.styleMarginRight == styleMarginRight &&
    other.styleBackground == styleBackground &&
    other.styleBackgroundColor == styleBackgroundColor &&
    other.styleBackgroundFile == styleBackgroundFile &&
    other.styleBackgroundMode == styleBackgroundMode &&
    other.styleWidth == styleWidth &&
    other.roleType == roleType &&
    other.roles == roles &&
    other.schemaProperty == schemaProperty &&
    other.dataSourceId == dataSourceId &&
    other.itemsPerPage == itemsPerPage &&
    other.buttonLoadMoreLabel == buttonLoadMoreLabel &&
    _deepEquality.equals(other.propertyOptions, propertyOptions) &&
    other.isPubliclySortable == isPubliclySortable &&
    other.isPubliclyFilterable == isPubliclyFilterable &&
    other.isPubliclySearchable == isPubliclySearchable &&
    _deepEquality.equals(other.fields, fields) &&
    other.orientation == orientation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (pageId.hashCode) +
    (type.hashCode) +
    (order.hashCode) +
    (parentElementId == null ? 0 : parentElementId!.hashCode) +
    (placeInContainer == null ? 0 : placeInContainer!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode) +
    (styles == null ? 0 : styles!.hashCode) +
    (styleBorderTopColor == null ? 0 : styleBorderTopColor!.hashCode) +
    (styleBorderTopSize == null ? 0 : styleBorderTopSize!.hashCode) +
    (stylePaddingTop == null ? 0 : stylePaddingTop!.hashCode) +
    (styleMarginTop == null ? 0 : styleMarginTop!.hashCode) +
    (styleBorderBottomColor == null ? 0 : styleBorderBottomColor!.hashCode) +
    (styleBorderBottomSize == null ? 0 : styleBorderBottomSize!.hashCode) +
    (stylePaddingBottom == null ? 0 : stylePaddingBottom!.hashCode) +
    (styleMarginBottom == null ? 0 : styleMarginBottom!.hashCode) +
    (styleBorderLeftColor == null ? 0 : styleBorderLeftColor!.hashCode) +
    (styleBorderLeftSize == null ? 0 : styleBorderLeftSize!.hashCode) +
    (stylePaddingLeft == null ? 0 : stylePaddingLeft!.hashCode) +
    (styleMarginLeft == null ? 0 : styleMarginLeft!.hashCode) +
    (styleBorderRightColor == null ? 0 : styleBorderRightColor!.hashCode) +
    (styleBorderRightSize == null ? 0 : styleBorderRightSize!.hashCode) +
    (stylePaddingRight == null ? 0 : stylePaddingRight!.hashCode) +
    (styleMarginRight == null ? 0 : styleMarginRight!.hashCode) +
    (styleBackground == null ? 0 : styleBackground!.hashCode) +
    (styleBackgroundColor == null ? 0 : styleBackgroundColor!.hashCode) +
    (styleBackgroundFile == null ? 0 : styleBackgroundFile!.hashCode) +
    (styleBackgroundMode == null ? 0 : styleBackgroundMode!.hashCode) +
    (styleWidth == null ? 0 : styleWidth!.hashCode) +
    (roleType == null ? 0 : roleType!.hashCode) +
    (roles == null ? 0 : roles!.hashCode) +
    (schemaProperty == null ? 0 : schemaProperty!.hashCode) +
    (dataSourceId == null ? 0 : dataSourceId!.hashCode) +
    (itemsPerPage.hashCode) +
    (buttonLoadMoreLabel.hashCode) +
    (propertyOptions.hashCode) +
    (isPubliclySortable.hashCode) +
    (isPubliclyFilterable.hashCode) +
    (isPubliclySearchable.hashCode) +
    (fields.hashCode) +
    (orientation == null ? 0 : orientation!.hashCode);

  @override
  String toString() => 'TableElementElement[id=$id, pageId=$pageId, type=$type, order=$order, parentElementId=$parentElementId, placeInContainer=$placeInContainer, visibility=$visibility, styles=$styles, styleBorderTopColor=$styleBorderTopColor, styleBorderTopSize=$styleBorderTopSize, stylePaddingTop=$stylePaddingTop, styleMarginTop=$styleMarginTop, styleBorderBottomColor=$styleBorderBottomColor, styleBorderBottomSize=$styleBorderBottomSize, stylePaddingBottom=$stylePaddingBottom, styleMarginBottom=$styleMarginBottom, styleBorderLeftColor=$styleBorderLeftColor, styleBorderLeftSize=$styleBorderLeftSize, stylePaddingLeft=$stylePaddingLeft, styleMarginLeft=$styleMarginLeft, styleBorderRightColor=$styleBorderRightColor, styleBorderRightSize=$styleBorderRightSize, stylePaddingRight=$stylePaddingRight, styleMarginRight=$styleMarginRight, styleBackground=$styleBackground, styleBackgroundColor=$styleBackgroundColor, styleBackgroundFile=$styleBackgroundFile, styleBackgroundMode=$styleBackgroundMode, styleWidth=$styleWidth, roleType=$roleType, roles=$roles, schemaProperty=$schemaProperty, dataSourceId=$dataSourceId, itemsPerPage=$itemsPerPage, buttonLoadMoreLabel=$buttonLoadMoreLabel, propertyOptions=$propertyOptions, isPubliclySortable=$isPubliclySortable, isPubliclyFilterable=$isPubliclyFilterable, isPubliclySearchable=$isPubliclySearchable, fields=$fields, orientation=$orientation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'page_id'] = this.pageId;
      json[r'type'] = this.type;
      json[r'order'] = this.order;
    if (this.parentElementId != null) {
      json[r'parent_element_id'] = this.parentElementId;
    } else {
      json[r'parent_element_id'] = null;
    }
    if (this.placeInContainer != null) {
      json[r'place_in_container'] = this.placeInContainer;
    } else {
      json[r'place_in_container'] = null;
    }
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    if (this.styles != null) {
      json[r'styles'] = this.styles;
    } else {
      json[r'styles'] = null;
    }
    if (this.styleBorderTopColor != null) {
      json[r'style_border_top_color'] = this.styleBorderTopColor;
    } else {
      json[r'style_border_top_color'] = null;
    }
    if (this.styleBorderTopSize != null) {
      json[r'style_border_top_size'] = this.styleBorderTopSize;
    } else {
      json[r'style_border_top_size'] = null;
    }
    if (this.stylePaddingTop != null) {
      json[r'style_padding_top'] = this.stylePaddingTop;
    } else {
      json[r'style_padding_top'] = null;
    }
    if (this.styleMarginTop != null) {
      json[r'style_margin_top'] = this.styleMarginTop;
    } else {
      json[r'style_margin_top'] = null;
    }
    if (this.styleBorderBottomColor != null) {
      json[r'style_border_bottom_color'] = this.styleBorderBottomColor;
    } else {
      json[r'style_border_bottom_color'] = null;
    }
    if (this.styleBorderBottomSize != null) {
      json[r'style_border_bottom_size'] = this.styleBorderBottomSize;
    } else {
      json[r'style_border_bottom_size'] = null;
    }
    if (this.stylePaddingBottom != null) {
      json[r'style_padding_bottom'] = this.stylePaddingBottom;
    } else {
      json[r'style_padding_bottom'] = null;
    }
    if (this.styleMarginBottom != null) {
      json[r'style_margin_bottom'] = this.styleMarginBottom;
    } else {
      json[r'style_margin_bottom'] = null;
    }
    if (this.styleBorderLeftColor != null) {
      json[r'style_border_left_color'] = this.styleBorderLeftColor;
    } else {
      json[r'style_border_left_color'] = null;
    }
    if (this.styleBorderLeftSize != null) {
      json[r'style_border_left_size'] = this.styleBorderLeftSize;
    } else {
      json[r'style_border_left_size'] = null;
    }
    if (this.stylePaddingLeft != null) {
      json[r'style_padding_left'] = this.stylePaddingLeft;
    } else {
      json[r'style_padding_left'] = null;
    }
    if (this.styleMarginLeft != null) {
      json[r'style_margin_left'] = this.styleMarginLeft;
    } else {
      json[r'style_margin_left'] = null;
    }
    if (this.styleBorderRightColor != null) {
      json[r'style_border_right_color'] = this.styleBorderRightColor;
    } else {
      json[r'style_border_right_color'] = null;
    }
    if (this.styleBorderRightSize != null) {
      json[r'style_border_right_size'] = this.styleBorderRightSize;
    } else {
      json[r'style_border_right_size'] = null;
    }
    if (this.stylePaddingRight != null) {
      json[r'style_padding_right'] = this.stylePaddingRight;
    } else {
      json[r'style_padding_right'] = null;
    }
    if (this.styleMarginRight != null) {
      json[r'style_margin_right'] = this.styleMarginRight;
    } else {
      json[r'style_margin_right'] = null;
    }
    if (this.styleBackground != null) {
      json[r'style_background'] = this.styleBackground;
    } else {
      json[r'style_background'] = null;
    }
    if (this.styleBackgroundColor != null) {
      json[r'style_background_color'] = this.styleBackgroundColor;
    } else {
      json[r'style_background_color'] = null;
    }
    if (this.styleBackgroundFile != null) {
      json[r'style_background_file'] = this.styleBackgroundFile;
    } else {
      json[r'style_background_file'] = null;
    }
    if (this.styleBackgroundMode != null) {
      json[r'style_background_mode'] = this.styleBackgroundMode;
    } else {
      json[r'style_background_mode'] = null;
    }
    if (this.styleWidth != null) {
      json[r'style_width'] = this.styleWidth;
    } else {
      json[r'style_width'] = null;
    }
    if (this.roleType != null) {
      json[r'role_type'] = this.roleType;
    } else {
      json[r'role_type'] = null;
    }
    if (this.roles != null) {
      json[r'roles'] = this.roles;
    } else {
      json[r'roles'] = null;
    }
    if (this.schemaProperty != null) {
      json[r'schema_property'] = this.schemaProperty;
    } else {
      json[r'schema_property'] = null;
    }
    if (this.dataSourceId != null) {
      json[r'data_source_id'] = this.dataSourceId;
    } else {
      json[r'data_source_id'] = null;
    }
      json[r'items_per_page'] = this.itemsPerPage;
      json[r'button_load_more_label'] = this.buttonLoadMoreLabel;
      json[r'property_options'] = this.propertyOptions;
      json[r'is_publicly_sortable'] = this.isPubliclySortable;
      json[r'is_publicly_filterable'] = this.isPubliclyFilterable;
      json[r'is_publicly_searchable'] = this.isPubliclySearchable;
      json[r'fields'] = this.fields;
    if (this.orientation != null) {
      json[r'orientation'] = this.orientation;
    } else {
      json[r'orientation'] = null;
    }
    return json;
  }

  /// Returns a new [TableElementElement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TableElementElement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TableElementElement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TableElementElement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TableElementElement(
        id: mapValueOfType<int>(json, r'id')!,
        pageId: mapValueOfType<int>(json, r'page_id')!,
        type: mapValueOfType<String>(json, r'type')!,
        order: mapValueOfType<double>(json, r'order')!,
        parentElementId: mapValueOfType<int>(json, r'parent_element_id'),
        placeInContainer: mapValueOfType<String>(json, r'place_in_container'),
        visibility: Visibility789Enum.fromJson(json[r'visibility']),
        styles: ButtonTableConfigBlock.fromJson(json[r'styles']),
        styleBorderTopColor: mapValueOfType<String>(json, r'style_border_top_color'),
        styleBorderTopSize: mapValueOfType<int>(json, r'style_border_top_size'),
        stylePaddingTop: mapValueOfType<int>(json, r'style_padding_top'),
        styleMarginTop: mapValueOfType<int>(json, r'style_margin_top'),
        styleBorderBottomColor: mapValueOfType<String>(json, r'style_border_bottom_color'),
        styleBorderBottomSize: mapValueOfType<int>(json, r'style_border_bottom_size'),
        stylePaddingBottom: mapValueOfType<int>(json, r'style_padding_bottom'),
        styleMarginBottom: mapValueOfType<int>(json, r'style_margin_bottom'),
        styleBorderLeftColor: mapValueOfType<String>(json, r'style_border_left_color'),
        styleBorderLeftSize: mapValueOfType<int>(json, r'style_border_left_size'),
        stylePaddingLeft: mapValueOfType<int>(json, r'style_padding_left'),
        styleMarginLeft: mapValueOfType<int>(json, r'style_margin_left'),
        styleBorderRightColor: mapValueOfType<String>(json, r'style_border_right_color'),
        styleBorderRightSize: mapValueOfType<int>(json, r'style_border_right_size'),
        stylePaddingRight: mapValueOfType<int>(json, r'style_padding_right'),
        styleMarginRight: mapValueOfType<int>(json, r'style_margin_right'),
        styleBackground: StyleBackgroundEnum.fromJson(json[r'style_background']),
        styleBackgroundColor: mapValueOfType<String>(json, r'style_background_color'),
        styleBackgroundFile: UserFile.fromJson(json[r'style_background_file']),
        styleBackgroundMode: StyleBackgroundModeEnum.fromJson(json[r'style_background_mode']),
        styleWidth: StyleWidthEnum.fromJson(json[r'style_width']),
        roleType: RoleTypeEnum.fromJson(json[r'role_type']),
        roles: mapValueOfType<Object>(json, r'roles'),
        schemaProperty: mapValueOfType<String>(json, r'schema_property'),
        dataSourceId: mapValueOfType<int>(json, r'data_source_id'),
        itemsPerPage: mapValueOfType<int>(json, r'items_per_page') ?? 20,
        buttonLoadMoreLabel: mapValueOfType<String>(json, r'button_load_more_label') ?? '',
        propertyOptions: CollectionElementPropertyOptions.listFromJson(json[r'property_options']),
        isPubliclySortable: mapValueOfType<bool>(json, r'is_publicly_sortable')!,
        isPubliclyFilterable: mapValueOfType<bool>(json, r'is_publicly_filterable')!,
        isPubliclySearchable: mapValueOfType<bool>(json, r'is_publicly_searchable')!,
        fields: CollectionField.listFromJson(json[r'fields']),
        orientation: mapValueOfType<Object>(json, r'orientation'),
      );
    }
    return null;
  }

  static List<TableElementElement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableElementElement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableElementElement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TableElementElement> mapFromJson(dynamic json) {
    final map = <String, TableElementElement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableElementElement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TableElementElement-objects as value to a dart map
  static Map<String, List<TableElementElement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TableElementElement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TableElementElement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'page_id',
    'type',
    'order',
    'parent_element_id',
    'is_publicly_sortable',
    'is_publicly_filterable',
    'is_publicly_searchable',
  };
}


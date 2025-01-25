//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ElementTypeElement {
  /// Returns a new [ElementTypeElement] instance.
  ElementTypeElement({
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
    this.value = '',
    this.level = 1,
    this.format = FormatEnum.plain,
    this.navigationType,
    this.navigateToPageId,
    this.navigateToUrl = '',
    this.pageParameters = const [],
    this.target,
    this.variant,
    this.imageSourceType,
    this.imageFile,
    this.imageUrl = '',
    this.altText = '',
    this.label = '',
    this.defaultValue = '',
    this.required_ = false,
    this.validationType,
    this.placeholder = '',
    this.isMultiline = false,
    this.rows = 3,
    this.inputType = InputTypeEnum.text,
    this.columnAmount,
    this.columnGap,
    this.alignment,
    this.schemaProperty,
    this.dataSourceId,
    this.itemsPerPage = 20,
    this.buttonLoadMoreLabel = '',
    this.propertyOptions = const [],
    this.isPubliclySortable = false,
    this.isPubliclyFilterable = false,
    this.isPubliclySearchable = true,
    this.fields = const [],
    this.orientation,
    this.itemsPerRow,
    this.multiple = false,
    this.optionNameSuffix = '',
    this.submitButtonLabel = '',
    this.resetInitialValuesPostSubmission,
    this.options = const [],
    this.showAsDropdown = true,
    this.optionType = OptionTypeEnum.manual,
    this.formulaValue = '',
    this.formulaName = '',
    this.sourceType = SourceTypeEnum.url,
    this.url = '',
    this.embed = '',
    this.height = 300,
    this.dateFormat = DateFormatEnum.EU,
    this.includeTime = false,
    this.timeFormat = TimeFormatEnum.n24,
    this.shareType,
    this.pages = const [],
    this.userSourceId,
    this.loginButtonLabel = '',
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
  ButtonInputConfigBlock? styles;

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

  /// The caption of the button.
  String value;

  /// The level of the heading from 1 to 6.
  ///
  /// Minimum value: 1
  /// Maximum value: 6
  int level;

  /// The format of the text  * `plain` - Plain * `markdown` - Markdown
  FormatEnum format;

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

  /// The variant of the link.  * `link` - Link * `button` - Button
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VariantEnum? variant;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ImageSourceTypeEnum? imageSourceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserFile? imageFile;

  /// A link to the image file
  String imageUrl;

  /// Text that is displayed when the image can't load
  String altText;

  /// The text label for this date time picker
  String label;

  /// This date time picker input's default value.
  String defaultValue;

  /// Whether this form element is a required field.
  bool required_;

  /// Optionally set the validation type to use when applying form data.  * `any` - Any * `email` - Email * `integer` - Integer
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ValidationTypeEnum? validationType;

  /// The placeholder text which should be applied to the element.
  String placeholder;

  /// Whether this text input is multiline.
  bool isMultiline;

  /// Number of rows displayed by the rendered input element
  ///
  /// Minimum value: 1
  /// Maximum value: 100
  int rows;

  /// The type of the input, not applicable for multiline inputs.  * `text` - Text * `password` - Password
  InputTypeEnum inputType;

  /// The amount of columns inside this column element.
  ///
  /// Minimum value: 1
  /// Maximum value: 6
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? columnAmount;

  /// The amount of space between the columns.
  ///
  /// Minimum value: 0
  /// Maximum value: 2000
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? columnGap;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AlignmentEnum? alignment;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrientationEnum? orientation;

  /// The amount repetitions per row, per device type. Only applicable when the orientation is horizontal.
  Object? itemsPerRow;

  /// Whether this choice allows users to choose multiple values.
  bool multiple;

  /// The formula to generate the displayed option name suffix
  String optionNameSuffix;

  String submitButtonLabel;

  /// Whether to reset the form to using its initial values after a successful form submission.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? resetInitialValuesPostSubmission;

  List<ChoiceOption> options;

  /// Whether to show the choices as a dropdown.
  bool showAsDropdown;

  OptionTypeEnum optionType;

  /// The value of the option if it is a formula
  String formulaValue;

  /// The display name of the option if it is a formula
  String formulaName;

  SourceTypeEnum sourceType;

  /// A link to the page to embed
  String url;

  /// Inline HTML to embed
  String embed;

  /// Height in pixels of the iframe
  ///
  /// Minimum value: 1
  /// Maximum value: 2000
  int height;

  /// EU (25/04/2024), US (04/25/2024) or ISO (2024-04-25)  * `EU` - European (D/M/Y) * `US` - US (M/D/Y) * `ISO` - ISO (Y-M-D)
  DateFormatEnum dateFormat;

  /// Whether to include time in the representation of the date
  bool includeTime;

  /// 24 (14:00) or 12 (02:30) PM  * `24` - 24 hour * `12` - 12 hour
  TimeFormatEnum timeFormat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ShareTypeEnum? shareType;

  List<int> pages;

  /// Display the auth form for the selected user source
  int? userSourceId;

  /// The label of the login button
  String loginButtonLabel;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ElementTypeElement &&
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
    other.value == value &&
    other.level == level &&
    other.format == format &&
    other.navigationType == navigationType &&
    other.navigateToPageId == navigateToPageId &&
    other.navigateToUrl == navigateToUrl &&
    _deepEquality.equals(other.pageParameters, pageParameters) &&
    other.target == target &&
    other.variant == variant &&
    other.imageSourceType == imageSourceType &&
    other.imageFile == imageFile &&
    other.imageUrl == imageUrl &&
    other.altText == altText &&
    other.label == label &&
    other.defaultValue == defaultValue &&
    other.required_ == required_ &&
    other.validationType == validationType &&
    other.placeholder == placeholder &&
    other.isMultiline == isMultiline &&
    other.rows == rows &&
    other.inputType == inputType &&
    other.columnAmount == columnAmount &&
    other.columnGap == columnGap &&
    other.alignment == alignment &&
    other.schemaProperty == schemaProperty &&
    other.dataSourceId == dataSourceId &&
    other.itemsPerPage == itemsPerPage &&
    other.buttonLoadMoreLabel == buttonLoadMoreLabel &&
    _deepEquality.equals(other.propertyOptions, propertyOptions) &&
    other.isPubliclySortable == isPubliclySortable &&
    other.isPubliclyFilterable == isPubliclyFilterable &&
    other.isPubliclySearchable == isPubliclySearchable &&
    _deepEquality.equals(other.fields, fields) &&
    other.orientation == orientation &&
    other.itemsPerRow == itemsPerRow &&
    other.multiple == multiple &&
    other.optionNameSuffix == optionNameSuffix &&
    other.submitButtonLabel == submitButtonLabel &&
    other.resetInitialValuesPostSubmission == resetInitialValuesPostSubmission &&
    _deepEquality.equals(other.options, options) &&
    other.showAsDropdown == showAsDropdown &&
    other.optionType == optionType &&
    other.formulaValue == formulaValue &&
    other.formulaName == formulaName &&
    other.sourceType == sourceType &&
    other.url == url &&
    other.embed == embed &&
    other.height == height &&
    other.dateFormat == dateFormat &&
    other.includeTime == includeTime &&
    other.timeFormat == timeFormat &&
    other.shareType == shareType &&
    _deepEquality.equals(other.pages, pages) &&
    other.userSourceId == userSourceId &&
    other.loginButtonLabel == loginButtonLabel;

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
    (value.hashCode) +
    (level.hashCode) +
    (format.hashCode) +
    (navigationType == null ? 0 : navigationType!.hashCode) +
    (navigateToPageId == null ? 0 : navigateToPageId!.hashCode) +
    (navigateToUrl.hashCode) +
    (pageParameters.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (variant == null ? 0 : variant!.hashCode) +
    (imageSourceType == null ? 0 : imageSourceType!.hashCode) +
    (imageFile == null ? 0 : imageFile!.hashCode) +
    (imageUrl.hashCode) +
    (altText.hashCode) +
    (label.hashCode) +
    (defaultValue.hashCode) +
    (required_.hashCode) +
    (validationType == null ? 0 : validationType!.hashCode) +
    (placeholder.hashCode) +
    (isMultiline.hashCode) +
    (rows.hashCode) +
    (inputType.hashCode) +
    (columnAmount == null ? 0 : columnAmount!.hashCode) +
    (columnGap == null ? 0 : columnGap!.hashCode) +
    (alignment == null ? 0 : alignment!.hashCode) +
    (schemaProperty == null ? 0 : schemaProperty!.hashCode) +
    (dataSourceId == null ? 0 : dataSourceId!.hashCode) +
    (itemsPerPage.hashCode) +
    (buttonLoadMoreLabel.hashCode) +
    (propertyOptions.hashCode) +
    (isPubliclySortable.hashCode) +
    (isPubliclyFilterable.hashCode) +
    (isPubliclySearchable.hashCode) +
    (fields.hashCode) +
    (orientation == null ? 0 : orientation!.hashCode) +
    (itemsPerRow == null ? 0 : itemsPerRow!.hashCode) +
    (multiple.hashCode) +
    (optionNameSuffix.hashCode) +
    (submitButtonLabel.hashCode) +
    (resetInitialValuesPostSubmission == null ? 0 : resetInitialValuesPostSubmission!.hashCode) +
    (options.hashCode) +
    (showAsDropdown.hashCode) +
    (optionType.hashCode) +
    (formulaValue.hashCode) +
    (formulaName.hashCode) +
    (sourceType.hashCode) +
    (url.hashCode) +
    (embed.hashCode) +
    (height.hashCode) +
    (dateFormat.hashCode) +
    (includeTime.hashCode) +
    (timeFormat.hashCode) +
    (shareType == null ? 0 : shareType!.hashCode) +
    (pages.hashCode) +
    (userSourceId == null ? 0 : userSourceId!.hashCode) +
    (loginButtonLabel.hashCode);

  @override
  String toString() => 'ElementTypeElement[id=$id, pageId=$pageId, type=$type, order=$order, parentElementId=$parentElementId, placeInContainer=$placeInContainer, visibility=$visibility, styles=$styles, styleBorderTopColor=$styleBorderTopColor, styleBorderTopSize=$styleBorderTopSize, stylePaddingTop=$stylePaddingTop, styleMarginTop=$styleMarginTop, styleBorderBottomColor=$styleBorderBottomColor, styleBorderBottomSize=$styleBorderBottomSize, stylePaddingBottom=$stylePaddingBottom, styleMarginBottom=$styleMarginBottom, styleBorderLeftColor=$styleBorderLeftColor, styleBorderLeftSize=$styleBorderLeftSize, stylePaddingLeft=$stylePaddingLeft, styleMarginLeft=$styleMarginLeft, styleBorderRightColor=$styleBorderRightColor, styleBorderRightSize=$styleBorderRightSize, stylePaddingRight=$stylePaddingRight, styleMarginRight=$styleMarginRight, styleBackground=$styleBackground, styleBackgroundColor=$styleBackgroundColor, styleBackgroundFile=$styleBackgroundFile, styleBackgroundMode=$styleBackgroundMode, styleWidth=$styleWidth, roleType=$roleType, roles=$roles, value=$value, level=$level, format=$format, navigationType=$navigationType, navigateToPageId=$navigateToPageId, navigateToUrl=$navigateToUrl, pageParameters=$pageParameters, target=$target, variant=$variant, imageSourceType=$imageSourceType, imageFile=$imageFile, imageUrl=$imageUrl, altText=$altText, label=$label, defaultValue=$defaultValue, required_=$required_, validationType=$validationType, placeholder=$placeholder, isMultiline=$isMultiline, rows=$rows, inputType=$inputType, columnAmount=$columnAmount, columnGap=$columnGap, alignment=$alignment, schemaProperty=$schemaProperty, dataSourceId=$dataSourceId, itemsPerPage=$itemsPerPage, buttonLoadMoreLabel=$buttonLoadMoreLabel, propertyOptions=$propertyOptions, isPubliclySortable=$isPubliclySortable, isPubliclyFilterable=$isPubliclyFilterable, isPubliclySearchable=$isPubliclySearchable, fields=$fields, orientation=$orientation, itemsPerRow=$itemsPerRow, multiple=$multiple, optionNameSuffix=$optionNameSuffix, submitButtonLabel=$submitButtonLabel, resetInitialValuesPostSubmission=$resetInitialValuesPostSubmission, options=$options, showAsDropdown=$showAsDropdown, optionType=$optionType, formulaValue=$formulaValue, formulaName=$formulaName, sourceType=$sourceType, url=$url, embed=$embed, height=$height, dateFormat=$dateFormat, includeTime=$includeTime, timeFormat=$timeFormat, shareType=$shareType, pages=$pages, userSourceId=$userSourceId, loginButtonLabel=$loginButtonLabel]';

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
      json[r'value'] = this.value;
      json[r'level'] = this.level;
      json[r'format'] = this.format;
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
    if (this.variant != null) {
      json[r'variant'] = this.variant;
    } else {
      json[r'variant'] = null;
    }
    if (this.imageSourceType != null) {
      json[r'image_source_type'] = this.imageSourceType;
    } else {
      json[r'image_source_type'] = null;
    }
    if (this.imageFile != null) {
      json[r'image_file'] = this.imageFile;
    } else {
      json[r'image_file'] = null;
    }
      json[r'image_url'] = this.imageUrl;
      json[r'alt_text'] = this.altText;
      json[r'label'] = this.label;
      json[r'default_value'] = this.defaultValue;
      json[r'required'] = this.required_;
    if (this.validationType != null) {
      json[r'validation_type'] = this.validationType;
    } else {
      json[r'validation_type'] = null;
    }
      json[r'placeholder'] = this.placeholder;
      json[r'is_multiline'] = this.isMultiline;
      json[r'rows'] = this.rows;
      json[r'input_type'] = this.inputType;
    if (this.columnAmount != null) {
      json[r'column_amount'] = this.columnAmount;
    } else {
      json[r'column_amount'] = null;
    }
    if (this.columnGap != null) {
      json[r'column_gap'] = this.columnGap;
    } else {
      json[r'column_gap'] = null;
    }
    if (this.alignment != null) {
      json[r'alignment'] = this.alignment;
    } else {
      json[r'alignment'] = null;
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
    if (this.itemsPerRow != null) {
      json[r'items_per_row'] = this.itemsPerRow;
    } else {
      json[r'items_per_row'] = null;
    }
      json[r'multiple'] = this.multiple;
      json[r'option_name_suffix'] = this.optionNameSuffix;
      json[r'submit_button_label'] = this.submitButtonLabel;
    if (this.resetInitialValuesPostSubmission != null) {
      json[r'reset_initial_values_post_submission'] = this.resetInitialValuesPostSubmission;
    } else {
      json[r'reset_initial_values_post_submission'] = null;
    }
      json[r'options'] = this.options;
      json[r'show_as_dropdown'] = this.showAsDropdown;
      json[r'option_type'] = this.optionType;
      json[r'formula_value'] = this.formulaValue;
      json[r'formula_name'] = this.formulaName;
      json[r'source_type'] = this.sourceType;
      json[r'url'] = this.url;
      json[r'embed'] = this.embed;
      json[r'height'] = this.height;
      json[r'date_format'] = this.dateFormat;
      json[r'include_time'] = this.includeTime;
      json[r'time_format'] = this.timeFormat;
    if (this.shareType != null) {
      json[r'share_type'] = this.shareType;
    } else {
      json[r'share_type'] = null;
    }
      json[r'pages'] = this.pages;
    if (this.userSourceId != null) {
      json[r'user_source_id'] = this.userSourceId;
    } else {
      json[r'user_source_id'] = null;
    }
      json[r'login_button_label'] = this.loginButtonLabel;
    return json;
  }

  /// Returns a new [ElementTypeElement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ElementTypeElement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ElementTypeElement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ElementTypeElement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ElementTypeElement(
        id: mapValueOfType<int>(json, r'id')!,
        pageId: mapValueOfType<int>(json, r'page_id')!,
        type: mapValueOfType<String>(json, r'type')!,
        order: mapValueOfType<double>(json, r'order')!,
        parentElementId: mapValueOfType<int>(json, r'parent_element_id'),
        placeInContainer: mapValueOfType<String>(json, r'place_in_container'),
        visibility: Visibility789Enum.fromJson(json[r'visibility']),
        styles: ButtonInputConfigBlock.fromJson(json[r'styles']),
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
        value: mapValueOfType<String>(json, r'value') ?? '',
        level: mapValueOfType<int>(json, r'level') ?? 1,
        format: FormatEnum.fromJson(json[r'format']) ?? FormatEnum.plain,
        navigationType: NavigationTypeEnum.fromJson(json[r'navigation_type']),
        navigateToPageId: mapValueOfType<int>(json, r'navigate_to_page_id'),
        navigateToUrl: mapValueOfType<String>(json, r'navigate_to_url') ?? '',
        pageParameters: PageParameterValue.listFromJson(json[r'page_parameters']),
        target: TargetEnum.fromJson(json[r'target']),
        variant: VariantEnum.fromJson(json[r'variant']),
        imageSourceType: ImageSourceTypeEnum.fromJson(json[r'image_source_type']),
        imageFile: UserFile.fromJson(json[r'image_file']),
        imageUrl: mapValueOfType<String>(json, r'image_url') ?? '',
        altText: mapValueOfType<String>(json, r'alt_text') ?? '',
        label: mapValueOfType<String>(json, r'label') ?? '',
        defaultValue: mapValueOfType<String>(json, r'default_value') ?? '',
        required_: mapValueOfType<bool>(json, r'required') ?? false,
        validationType: ValidationTypeEnum.fromJson(json[r'validation_type']),
        placeholder: mapValueOfType<String>(json, r'placeholder') ?? '',
        isMultiline: mapValueOfType<bool>(json, r'is_multiline') ?? false,
        rows: mapValueOfType<int>(json, r'rows') ?? 3,
        inputType: InputTypeEnum.fromJson(json[r'input_type']) ?? InputTypeEnum.text,
        columnAmount: mapValueOfType<int>(json, r'column_amount'),
        columnGap: mapValueOfType<int>(json, r'column_gap'),
        alignment: AlignmentEnum.fromJson(json[r'alignment']),
        schemaProperty: mapValueOfType<String>(json, r'schema_property'),
        dataSourceId: mapValueOfType<int>(json, r'data_source_id'),
        itemsPerPage: mapValueOfType<int>(json, r'items_per_page') ?? 20,
        buttonLoadMoreLabel: mapValueOfType<String>(json, r'button_load_more_label') ?? '',
        propertyOptions: CollectionElementPropertyOptions.listFromJson(json[r'property_options']),
        isPubliclySortable: mapValueOfType<bool>(json, r'is_publicly_sortable')!,
        isPubliclyFilterable: mapValueOfType<bool>(json, r'is_publicly_filterable')!,
        isPubliclySearchable: mapValueOfType<bool>(json, r'is_publicly_searchable')!,
        fields: CollectionField.listFromJson(json[r'fields']),
        orientation: OrientationEnum.fromJson(json[r'orientation']),
        itemsPerRow: mapValueOfType<Object>(json, r'items_per_row'),
        multiple: mapValueOfType<bool>(json, r'multiple') ?? false,
        optionNameSuffix: mapValueOfType<String>(json, r'option_name_suffix') ?? '',
        submitButtonLabel: mapValueOfType<String>(json, r'submit_button_label') ?? '',
        resetInitialValuesPostSubmission: mapValueOfType<bool>(json, r'reset_initial_values_post_submission'),
        options: ChoiceOption.listFromJson(json[r'options']),
        showAsDropdown: mapValueOfType<bool>(json, r'show_as_dropdown') ?? true,
        optionType: OptionTypeEnum.fromJson(json[r'option_type']) ?? OptionTypeEnum.manual,
        formulaValue: mapValueOfType<String>(json, r'formula_value') ?? '',
        formulaName: mapValueOfType<String>(json, r'formula_name') ?? '',
        sourceType: SourceTypeEnum.fromJson(json[r'source_type']) ?? SourceTypeEnum.url,
        url: mapValueOfType<String>(json, r'url') ?? '',
        embed: mapValueOfType<String>(json, r'embed') ?? '',
        height: mapValueOfType<int>(json, r'height') ?? 300,
        dateFormat: DateFormatEnum.fromJson(json[r'date_format']) ?? DateFormatEnum.EU,
        includeTime: mapValueOfType<bool>(json, r'include_time') ?? false,
        timeFormat: TimeFormatEnum.fromJson(json[r'time_format']) ?? TimeFormatEnum.n24,
        shareType: ShareTypeEnum.fromJson(json[r'share_type']),
        pages: json[r'pages'] is Iterable
            ? (json[r'pages'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        userSourceId: mapValueOfType<int>(json, r'user_source_id'),
        loginButtonLabel: mapValueOfType<String>(json, r'login_button_label') ?? '',
      );
    }
    return null;
  }

  static List<ElementTypeElement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ElementTypeElement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ElementTypeElement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ElementTypeElement> mapFromJson(dynamic json) {
    final map = <String, ElementTypeElement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ElementTypeElement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ElementTypeElement-objects as value to a dart map
  static Map<String, List<ElementTypeElement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ElementTypeElement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ElementTypeElement.listFromJson(entry.value, growable: growable,);
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


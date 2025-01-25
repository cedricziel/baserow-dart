import 'package:json_annotation/json_annotation.dart';

import 'files.dart';

part 'builder_application.g.dart';

@JsonSerializable()
class PathParam {
  final String name;
  final String type;

  PathParam({
    required this.name,
    required this.type,
  });

  factory PathParam.fromJson(Map<String, dynamic> json) =>
      _$PathParamFromJson(json);

  Map<String, dynamic> toJson() => _$PathParamToJson(this);
}

@JsonSerializable()
class Page {
  final int id;
  final String name;
  final String path;
  @JsonKey(name: 'path_params')
  final List<PathParam>? pathParams;
  final int order;
  @JsonKey(name: 'builder_id')
  final int builderId;
  final bool shared;
  final String visibility;
  @JsonKey(name: 'role_type')
  final String roleType;
  final dynamic roles;

  Page({
    required this.id,
    required this.name,
    required this.path,
    this.pathParams,
    required this.order,
    required this.builderId,
    required this.shared,
    required this.visibility,
    required this.roleType,
    this.roles,
  });

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);
}

@JsonSerializable()
class Theme {
  @JsonKey(name: 'primary_color')
  final String? primaryColor;
  @JsonKey(name: 'secondary_color')
  final String? secondaryColor;
  @JsonKey(name: 'border_color')
  final String? borderColor;
  @JsonKey(name: 'main_success_color')
  final String? mainSuccessColor;
  @JsonKey(name: 'main_warning_color')
  final String? mainWarningColor;
  @JsonKey(name: 'main_error_color')
  final String? mainErrorColor;
  @JsonKey(name: 'body_font_family')
  final String? bodyFontFamily;
  @JsonKey(name: 'body_font_size')
  final int? bodyFontSize;
  @JsonKey(name: 'body_text_color')
  final String? bodyTextColor;
  @JsonKey(name: 'body_text_alignment')
  final String? bodyTextAlignment;
  @JsonKey(name: 'heading_1_font_family')
  final String? heading1FontFamily;
  @JsonKey(name: 'heading_1_font_size')
  final int? heading1FontSize;
  @JsonKey(name: 'heading_1_text_color')
  final String? heading1TextColor;
  @JsonKey(name: 'heading_1_text_alignment')
  final String? heading1TextAlignment;
  @JsonKey(name: 'heading_2_font_family')
  final String? heading2FontFamily;
  @JsonKey(name: 'heading_2_font_size')
  final int? heading2FontSize;
  @JsonKey(name: 'heading_2_text_color')
  final String? heading2TextColor;
  @JsonKey(name: 'heading_2_text_alignment')
  final String? heading2TextAlignment;
  @JsonKey(name: 'heading_3_font_family')
  final String? heading3FontFamily;
  @JsonKey(name: 'heading_3_font_size')
  final int? heading3FontSize;
  @JsonKey(name: 'heading_3_text_color')
  final String? heading3TextColor;
  @JsonKey(name: 'heading_3_text_alignment')
  final String? heading3TextAlignment;
  @JsonKey(name: 'heading_4_font_family')
  final String? heading4FontFamily;
  @JsonKey(name: 'heading_4_font_size')
  final int? heading4FontSize;
  @JsonKey(name: 'heading_4_text_color')
  final String? heading4TextColor;
  @JsonKey(name: 'heading_4_text_alignment')
  final String? heading4TextAlignment;
  @JsonKey(name: 'heading_5_font_family')
  final String? heading5FontFamily;
  @JsonKey(name: 'heading_5_font_size')
  final int? heading5FontSize;
  @JsonKey(name: 'heading_5_text_color')
  final String? heading5TextColor;
  @JsonKey(name: 'heading_5_text_alignment')
  final String? heading5TextAlignment;
  @JsonKey(name: 'heading_6_font_family')
  final String? heading6FontFamily;
  @JsonKey(name: 'heading_6_font_size')
  final int? heading6FontSize;
  @JsonKey(name: 'heading_6_text_color')
  final String? heading6TextColor;
  @JsonKey(name: 'heading_6_text_alignment')
  final String? heading6TextAlignment;
  @JsonKey(name: 'button_font_family')
  final String? buttonFontFamily;
  @JsonKey(name: 'button_font_size')
  final int? buttonFontSize;
  @JsonKey(name: 'button_alignment')
  final String? buttonAlignment;
  @JsonKey(name: 'button_text_alignment')
  final String? buttonTextAlignment;
  @JsonKey(name: 'button_width')
  final String? buttonWidth;
  @JsonKey(name: 'button_background_color')
  final String? buttonBackgroundColor;
  @JsonKey(name: 'button_text_color')
  final String? buttonTextColor;
  @JsonKey(name: 'button_border_color')
  final String? buttonBorderColor;
  @JsonKey(name: 'button_border_size')
  final int? buttonBorderSize;
  @JsonKey(name: 'button_border_radius')
  final int? buttonBorderRadius;
  @JsonKey(name: 'button_vertical_padding')
  final int? buttonVerticalPadding;
  @JsonKey(name: 'button_horizontal_padding')
  final int? buttonHorizontalPadding;
  @JsonKey(name: 'button_hover_background_color')
  final String? buttonHoverBackgroundColor;
  @JsonKey(name: 'button_hover_text_color')
  final String? buttonHoverTextColor;
  @JsonKey(name: 'button_hover_border_color')
  final String? buttonHoverBorderColor;
  @JsonKey(name: 'link_font_family')
  final String? linkFontFamily;
  @JsonKey(name: 'link_font_size')
  final int? linkFontSize;
  @JsonKey(name: 'link_text_alignment')
  final String? linkTextAlignment;
  @JsonKey(name: 'link_text_color')
  final String? linkTextColor;
  @JsonKey(name: 'link_hover_text_color')
  final String? linkHoverTextColor;
  @JsonKey(name: 'image_max_height')
  final int? imageMaxHeight;
  @JsonKey(name: 'image_alignment')
  final String? imageAlignment;
  @JsonKey(name: 'image_max_width')
  final int? imageMaxWidth;
  @JsonKey(name: 'image_constraint')
  final String? imageConstraint;
  @JsonKey(name: 'page_background_file')
  final File? pageBackgroundFile;
  @JsonKey(name: 'page_background_color')
  final String? pageBackgroundColor;
  @JsonKey(name: 'page_background_mode')
  final String? pageBackgroundMode;
  @JsonKey(name: 'label_font_family')
  final String? labelFontFamily;
  @JsonKey(name: 'label_text_color')
  final String? labelTextColor;
  @JsonKey(name: 'label_font_size')
  final int? labelFontSize;
  @JsonKey(name: 'input_font_family')
  final String? inputFontFamily;
  @JsonKey(name: 'input_font_size')
  final int? inputFontSize;
  @JsonKey(name: 'input_text_color')
  final String? inputTextColor;
  @JsonKey(name: 'input_background_color')
  final String? inputBackgroundColor;
  @JsonKey(name: 'input_border_color')
  final String? inputBorderColor;
  @JsonKey(name: 'input_border_size')
  final int? inputBorderSize;
  @JsonKey(name: 'input_border_radius')
  final int? inputBorderRadius;
  @JsonKey(name: 'input_vertical_padding')
  final int? inputVerticalPadding;
  @JsonKey(name: 'input_horizontal_padding')
  final int? inputHorizontalPadding;
  @JsonKey(name: 'table_border_color')
  final String? tableBorderColor;
  @JsonKey(name: 'table_border_size')
  final int? tableBorderSize;
  @JsonKey(name: 'table_border_radius')
  final int? tableBorderRadius;
  @JsonKey(name: 'table_header_background_color')
  final String? tableHeaderBackgroundColor;
  @JsonKey(name: 'table_header_text_color')
  final String? tableHeaderTextColor;
  @JsonKey(name: 'table_header_font_size')
  final int? tableHeaderFontSize;
  @JsonKey(name: 'table_header_font_family')
  final String? tableHeaderFontFamily;
  @JsonKey(name: 'table_header_text_alignment')
  final String? tableHeaderTextAlignment;
  @JsonKey(name: 'table_cell_background_color')
  final String? tableCellBackgroundColor;
  @JsonKey(name: 'table_cell_alternate_background_color')
  final String? tableCellAlternateBackgroundColor;
  @JsonKey(name: 'table_cell_alignment')
  final String? tableCellAlignment;
  @JsonKey(name: 'table_cell_vertical_padding')
  final int? tableCellVerticalPadding;
  @JsonKey(name: 'table_cell_horizontal_padding')
  final int? tableCellHorizontalPadding;
  @JsonKey(name: 'table_vertical_separator_color')
  final String? tableVerticalSeparatorColor;
  @JsonKey(name: 'table_vertical_separator_size')
  final int? tableVerticalSeparatorSize;
  @JsonKey(name: 'table_horizontal_separator_color')
  final String? tableHorizontalSeparatorColor;
  @JsonKey(name: 'table_horizontal_separator_size')
  final int? tableHorizontalSeparatorSize;

  Theme({
    this.primaryColor,
    this.secondaryColor,
    this.borderColor,
    this.mainSuccessColor,
    this.mainWarningColor,
    this.mainErrorColor,
    this.bodyFontFamily,
    this.bodyFontSize,
    this.bodyTextColor,
    this.bodyTextAlignment,
    this.heading1FontFamily,
    this.heading1FontSize,
    this.heading1TextColor,
    this.heading1TextAlignment,
    this.heading2FontFamily,
    this.heading2FontSize,
    this.heading2TextColor,
    this.heading2TextAlignment,
    this.heading3FontFamily,
    this.heading3FontSize,
    this.heading3TextColor,
    this.heading3TextAlignment,
    this.heading4FontFamily,
    this.heading4FontSize,
    this.heading4TextColor,
    this.heading4TextAlignment,
    this.heading5FontFamily,
    this.heading5FontSize,
    this.heading5TextColor,
    this.heading5TextAlignment,
    this.heading6FontFamily,
    this.heading6FontSize,
    this.heading6TextColor,
    this.heading6TextAlignment,
    this.buttonFontFamily,
    this.buttonFontSize,
    this.buttonAlignment,
    this.buttonTextAlignment,
    this.buttonWidth,
    this.buttonBackgroundColor,
    this.buttonTextColor,
    this.buttonBorderColor,
    this.buttonBorderSize,
    this.buttonBorderRadius,
    this.buttonVerticalPadding,
    this.buttonHorizontalPadding,
    this.buttonHoverBackgroundColor,
    this.buttonHoverTextColor,
    this.buttonHoverBorderColor,
    this.linkFontFamily,
    this.linkFontSize,
    this.linkTextAlignment,
    this.linkTextColor,
    this.linkHoverTextColor,
    this.imageMaxHeight,
    this.imageAlignment,
    this.imageMaxWidth,
    this.imageConstraint,
    this.pageBackgroundFile,
    this.pageBackgroundColor,
    this.pageBackgroundMode,
    this.labelFontFamily,
    this.labelTextColor,
    this.labelFontSize,
    this.inputFontFamily,
    this.inputFontSize,
    this.inputTextColor,
    this.inputBackgroundColor,
    this.inputBorderColor,
    this.inputBorderSize,
    this.inputBorderRadius,
    this.inputVerticalPadding,
    this.inputHorizontalPadding,
    this.tableBorderColor,
    this.tableBorderSize,
    this.tableBorderRadius,
    this.tableHeaderBackgroundColor,
    this.tableHeaderTextColor,
    this.tableHeaderFontSize,
    this.tableHeaderFontFamily,
    this.tableHeaderTextAlignment,
    this.tableCellBackgroundColor,
    this.tableCellAlternateBackgroundColor,
    this.tableCellAlignment,
    this.tableCellVerticalPadding,
    this.tableCellHorizontalPadding,
    this.tableVerticalSeparatorColor,
    this.tableVerticalSeparatorSize,
    this.tableHorizontalSeparatorColor,
    this.tableHorizontalSeparatorSize,
  });

  factory Theme.fromJson(Map<String, dynamic> json) => _$ThemeFromJson(json);

  Map<String, dynamic> toJson() => _$ThemeToJson(this);
}

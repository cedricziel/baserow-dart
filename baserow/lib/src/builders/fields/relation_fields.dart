import '../base_builders.dart';

/// Builder for link row field configuration
class LinkRowFieldBuilder extends FieldBuilder {
  LinkRowFieldBuilder(String name) : super(name, 'link_row');

  LinkRowFieldBuilder withLinkedTable({
    required int tableId,
    bool hasRelatedField = true,
    int? limitSelectionViewId,
  }) {
    options ??= {};
    options!['link_row_table_id'] = tableId;
    options!['has_related_field'] = hasRelatedField;
    if (limitSelectionViewId != null) {
      options!['link_row_limit_selection_view_id'] = limitSelectionViewId;
    }
    return this;
  }
}

/// Builder for created by field configuration
class CreatedByFieldBuilder extends FieldBuilder {
  CreatedByFieldBuilder(String name) : super(name, 'created_by');
}

/// Builder for last modified by field configuration
class LastModifiedByFieldBuilder extends FieldBuilder {
  LastModifiedByFieldBuilder(String name) : super(name, 'last_modified_by');
}

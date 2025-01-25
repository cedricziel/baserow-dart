import 'base_builders.dart';

/// Builder for grid view configuration
class GridViewBuilder extends ViewBuilder {
  GridViewBuilder(String name) : super(name, 'grid');

  GridViewBuilder withFieldOrder(List<String> fieldNames) {
    options ??= {};
    options!['field_order'] = fieldNames;
    return this;
  }
}

/// Builder for gallery view configuration
class GalleryViewBuilder extends ViewBuilder {
  GalleryViewBuilder(String name) : super(name, 'gallery');

  GalleryViewBuilder withCardFields(List<String> fieldNames) {
    options ??= {};
    options!['card_fields'] = fieldNames;
    return this;
  }
}

/// Builder for form view configuration
class FormViewBuilder extends ViewBuilder {
  FormViewBuilder(String name) : super(name, 'form');

  FormViewBuilder withSubmitAction(String action) {
    options ??= {};
    options!['submit_action'] = action;
    return this;
  }

  FormViewBuilder withSubmitText(String text) {
    options ??= {};
    options!['submit_text'] = text;
    return this;
  }
}

/// Builder for kanban view configuration
class KanbanViewBuilder extends ViewBuilder {
  KanbanViewBuilder(String name) : super(name, 'kanban');

  KanbanViewBuilder groupByField(String fieldName) {
    options ??= {};
    options!['group_by_field'] = fieldName;
    return this;
  }
}

/// Extension methods for convenient view creation
extension TableBuilderViewTypes on TableBuilder {
  GridViewBuilder withGridView(String name) {
    final view = GridViewBuilder(name);
    addView(view);
    return view;
  }

  GalleryViewBuilder withGalleryView(String name) {
    final view = GalleryViewBuilder(name);
    addView(view);
    return view;
  }

  FormViewBuilder withFormView(String name) {
    final view = FormViewBuilder(name);
    addView(view);
    return view;
  }

  KanbanViewBuilder withKanbanView(String name) {
    final view = KanbanViewBuilder(name);
    addView(view);
    return view;
  }
}

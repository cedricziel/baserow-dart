import '../base_builders.dart';

/// Builder for date field configuration
class DateFieldBuilder extends FieldBuilder {
  DateFieldBuilder(String name) : super(name, 'date');

  DateFieldBuilder withDateFormat({
    bool includeTime = false,
    String? timezone,
  }) {
    options ??= {};
    options!['date_include_time'] = includeTime;
    if (timezone != null) {
      options!['date_timezone'] = timezone;
    }
    return this;
  }
}

/// Builder for created on field configuration
class CreatedOnFieldBuilder extends FieldBuilder {
  CreatedOnFieldBuilder(String name) : super(name, 'created_on');

  CreatedOnFieldBuilder withDateFormat({
    String format = 'EU',
    bool includeTime = false,
    String timeFormat = '24',
    bool showTimezone = false,
    String? forceTimezone,
  }) {
    options ??= {};
    options!['date_format'] = format;
    options!['date_include_time'] = includeTime;
    options!['date_time_format'] = timeFormat;
    options!['date_show_tzinfo'] = showTimezone;
    if (forceTimezone != null) {
      options!['date_force_timezone'] = forceTimezone;
    }
    return this;
  }
}

/// Builder for duration field configuration
class DurationFieldBuilder extends FieldBuilder {
  DurationFieldBuilder(String name) : super(name, 'duration');

  DurationFieldBuilder withFormat(String format) {
    options ??= {};
    options!['duration_format'] = format;
    return this;
  }
}

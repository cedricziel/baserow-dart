//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for DatabaseTableCalendarViewApi
void main() {
  // final instance = DatabaseTableCalendarViewApi();

  group('tests for DatabaseTableCalendarViewApi', () {
    // Responds with serialized rows grouped by date regarding view's date fieldif the user is authenticated and has access to the related workspace.  This is a **premium** feature.
    //
    //Future<CalendarViewExampleResponse> listDatabaseTableCalendarViewRows(DateTime fromTimestamp, DateTime toTimestamp, int viewId, { String filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String filterType, String filters, String include, int limit, int offset, String search, String searchMode, String userTimezone }) async
    test('test listDatabaseTableCalendarViewRows', () async {
      // TODO
    });

    // Responds with serialized rows grouped by the view's date field options related to the `slug` if the calendar view is publicly shared. Additional query parameters can be provided to control the `limit` and `offset` per select option.   This is a **premium** feature.
    //
    //Future<CalendarViewExampleResponse> publicListDatabaseTableCalendarViewRows(DateTime fromTimestamp, String slug, DateTime toTimestamp, { String filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String filterType, String filters, int limit, int offset, String userTimezone }) async
    test('test publicListDatabaseTableCalendarViewRows', () async {
      // TODO
    });

  });
}

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


/// tests for AuditLogApi
void main() {
  // final instance = AuditLogApi();

  group('tests for AuditLogApi', () {
    // Creates a job to export the filtered audit log to a CSV file.  This is a **enterprise** feature.
    //
    //Future<SingleAuditLogExportJobResponse> asyncAuditLogExport({ String clientSessionId, SingleAuditLogExportJobRequest singleAuditLogExportJobRequest }) async
    test('test asyncAuditLogExport', () async {
      // TODO
    });

    // Creates a job to export the filtered audit log to a CSV file.  This is a **enterprise** feature.
    //
    //Future<SingleAuditLogExportJobResponse> asyncAuditLogExport2({ String clientSessionId, SingleAuditLogExportJobRequest singleAuditLogExportJobRequest }) async
    test('test asyncAuditLogExport2', () async {
      // TODO
    });

    // List all distinct action types related to an audit log entry.  This is a **enterprise** feature.
    //
    //Future<List<AuditLogActionType>> auditLogActionTypes({ String search, int workspaceId }) async
    test('test auditLogActionTypes', () async {
      // TODO
    });

    // List all distinct action types related to an audit log entry.  This is a **enterprise** feature.
    //
    //Future<List<AuditLogActionType>> auditLogActionTypes2({ String search, int workspaceId }) async
    test('test auditLogActionTypes2', () async {
      // TODO
    });

    // Lists all audit log entries for the given workspace id.  This is a **enterprise** feature.
    //
    //Future<PaginationSerializerAuditLog> auditLogList({ String actionType, String fromTimestamp, int page, int size, String sorts, String toTimestamp, int userId, int workspaceId }) async
    test('test auditLogList', () async {
      // TODO
    });

    // Lists all audit log entries for the given workspace id.  This is a **enterprise** feature.
    //
    //Future<PaginationSerializerAuditLog> auditLogList2({ String actionType, String fromTimestamp, int page, int size, String sorts, String toTimestamp, int userId, int workspaceId }) async
    test('test auditLogList2', () async {
      // TODO
    });

    // List all users that have performed an action in the audit log.  This is a **enterprise** feature.
    //
    //Future<PaginationSerializerAuditLogUser> auditLogUsers({ int page, String search, int size, int workspaceId }) async
    test('test auditLogUsers', () async {
      // TODO
    });

    // List all users that have performed an action in the audit log.  This is a **enterprise** feature.
    //
    //Future<PaginationSerializerAuditLogUser> auditLogUsers2({ int page, String search, int size, int workspaceId }) async
    test('test auditLogUsers2', () async {
      // TODO
    });

    // List all distinct workspace names related to an audit log entry.  This is a **enterprise** feature.
    //
    //Future<PaginationSerializerAuditLogWorkspace> auditLogWorkspaces({ int page, String search, int size }) async
    test('test auditLogWorkspaces', () async {
      // TODO
    });

    // List all distinct workspace names related to an audit log entry.  This is a **enterprise** feature.
    //
    //Future<PaginationSerializerAuditLogWorkspace> auditLogWorkspaces2({ int page, String search, int size }) async
    test('test auditLogWorkspaces2', () async {
      // TODO
    });

  });
}

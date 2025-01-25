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


/// tests for AdminApi
void main() {
  // final instance = AdminApi();

  group('tests for AdminApi', () {
    // Adds the user related to the provided parameter and to the license related to the parameter. This only happens if there are enough seats left on the license and if the user is not already on the license.
    //
    //Future<LicenseUser> adminAddUserToLicense(int id, int userId) async
    test('test adminAddUserToLicense', () async {
      // TODO
    });

    // Creates and returns a new user if the requesting user is staff. This works even if new signups are disabled.
    //
    //Future<UserAdminResponse> adminCreateUser(UserAdminCreate userAdminCreate) async
    test('test adminCreateUser', () async {
      // TODO
    });

    // Returns the new and active users for the last 24 hours, 7 days and 30 days. The `previous_` values are the values of the period before, so for example `previous_new_users_last_24_hours` are the new users that signed up from 48 to 24 hours ago. It can be used to calculate an increase or decrease in the amount of signups. A list of the new and active users for every day for the last 30 days is also included.
    //
    //Future<AdminDashboard> adminDashboard() async
    test('test adminDashboard', () async {
      // TODO
    });

    // Deletes the specified user, if the requesting user has admin permissions. You cannot delete yourself.
    //
    //Future adminDeleteUser(int userId) async
    test('test adminDeleteUser', () async {
      // TODO
    });

    // Deletes the specified workspace and the applications inside that workspace, if the requesting user is staff.
    //
    //Future adminDeleteWorkspace(int workspaceId) async
    test('test adminDeleteWorkspace', () async {
      // TODO
    });

    // Updates specified user attributes and returns the updated user if the requesting user is staff. You cannot update yourself to no longer be an admin or active.
    //
    //Future<UserAdminResponse> adminEditUser(int userId, { PatchedUserAdminUpdate patchedUserAdminUpdate }) async
    test('test adminEditUser', () async {
      // TODO
    });

    // Fills the remaining empty seats of the license with the first users that are found.
    //
    //Future<List<LicenseUser>> adminFillRemainingSeatsOfLicense(int id) async
    test('test adminFillRemainingSeatsOfLicense', () async {
      // TODO
    });

    // Responds with detailed information about the license related to the provided parameter.
    //
    //Future<LicenseWithUsers> adminGetLicense(int id) async
    test('test adminGetLicense', () async {
      // TODO
    });

    // This endpoint allows staff to impersonate another user by requesting a JWT token and user object. The requesting user must have staff access in order to do this. It's not possible to impersonate a superuser or staff.
    //
    //Future<AdminImpersonateUser200Response> adminImpersonateUser(BaserowImpersonateAuthToken baserowImpersonateAuthToken) async
    test('test adminImpersonateUser', () async {
      // TODO
    });

    // This endpoint checks with the authority if the license needs to be updated. It also checks if the license is operating within its limits and might take action on that. It could also happen that the license has been deleted because there is an instance id mismatch or because it's invalid. In that case a `204` status code is returned.
    //
    //Future<LicenseWithUsers> adminLicenseCheck(int id) async
    test('test adminLicenseCheck', () async {
      // TODO
    });

    // This endpoint can be used to lookup users that can be added to a  license. Users that are already in the license are not returned here. Optionally a `search` query parameter can be provided to filter the results.
    //
    //Future<PaginationSerializerLicenseUserLookup> adminLicenseLookupUsers(int id, { int page, String search, int size }) async
    test('test adminLicenseLookupUsers', () async {
      // TODO
    });

    // Lists all the valid licenses that are registered to this instance. A premium license can be used to unlock the premium features for a fixed amount of users. An enterprise license can similarly be used to unlock enterpise features. More information about self hosted licenses can be found on our pricing page https://baserow.io/pricing.
    //
    //Future<List<License>> adminLicenses() async
    test('test adminLicenses', () async {
      // TODO
    });

    // Returns all users with detailed information on each user, if the requesting user is staff.
    //
    //Future<PaginationSerializerUserAdminResponse> adminListUsers({ int page, String search, int size, String sorts }) async
    test('test adminListUsers', () async {
      // TODO
    });

    // Returns all workspaces with detailed information on each workspace, if the requesting user is staff.
    //
    //Future<PaginationSerializerWorkspacesAdminResponse> adminListWorkspaces({ int page, String search, int size, String sorts }) async
    test('test adminListWorkspaces', () async {
      // TODO
    });

    // Registers a new license. After registering you can assign users to the license that will be able to use the license's features while the license is active. If an existing license with the same `license_id` already exists and the provided license has been issued later than that one, the existing one will be upgraded.
    //
    //Future<License> adminRegisterLicense(RegisterLicense registerLicense) async
    test('test adminRegisterLicense', () async {
      // TODO
    });

    // Removes all the users that are on the license. This will empty all the seats.
    //
    //Future adminRemoveAllUsersFromLicense(int id) async
    test('test adminRemoveAllUsersFromLicense', () async {
      // TODO
    });

    // Removes the existing license related to the provided parameter. If the license is active, then all the users that are using the license will lose access to the features granted by that license.
    //
    //Future adminRemoveLicense(int id) async
    test('test adminRemoveLicense', () async {
      // TODO
    });

    // Removes the user related to the provided parameter and to the license related to the parameter. This only happens if the user is on the license, otherwise nothing will happen.
    //
    //Future adminRemoveUserFromLicense(int id, int userId) async
    test('test adminRemoveUserFromLicense', () async {
      // TODO
    });

  });
}

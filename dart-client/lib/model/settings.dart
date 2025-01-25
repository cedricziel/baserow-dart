//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class Settings {
  /// Returns a new [Settings] instance.
  Settings({
    this.allowNewSignups,
    this.allowSignupsViaWorkspaceInvitations,
    this.allowResetPassword,
    this.allowGlobalWorkspaceCreation,
    this.accountDeletionGraceDelay,
    this.showAdminSignupPage,
    this.trackWorkspaceUsage,
    this.showBaserowHelpRequest,
    this.coBrandingLogo,
    this.emailVerification,
    this.verifyImportSignature,
  });

  /// Indicates whether new users can create a new account when signing up.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allowNewSignups;

  /// Indicates whether invited users can create an account when signing up, even if allow_new_signups is disabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allowSignupsViaWorkspaceInvitations;

  /// Indicates whether users can request a password reset link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allowResetPassword;

  /// Indicates whether all users can create workspaces, or just staff.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allowGlobalWorkspaceCreation;

  /// Number of days after the last login for an account pending deletion to be deleted
  ///
  /// Minimum value: 0
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accountDeletionGraceDelay;

  /// Indicates that there are no admin users in the database yet, so in the frontend the signup form will be shown instead of the login page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showAdminSignupPage;

  /// Runs a job once per day which calculates per workspace row counts and file storage usage, displayed on the admin workspace page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? trackWorkspaceUsage;

  /// Indicates whether the `We need your help!` message will be shown on the dashboard
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showBaserowHelpRequest;

  /// Co-branding logo that's placed next to the Baserow logo (176x29).
  UserFile? coBrandingLogo;

  EmailVerificationEnum? emailVerification;

  /// Indicates whether the signature of imported files should be verified.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? verifyImportSignature;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Settings &&
    other.allowNewSignups == allowNewSignups &&
    other.allowSignupsViaWorkspaceInvitations == allowSignupsViaWorkspaceInvitations &&
    other.allowResetPassword == allowResetPassword &&
    other.allowGlobalWorkspaceCreation == allowGlobalWorkspaceCreation &&
    other.accountDeletionGraceDelay == accountDeletionGraceDelay &&
    other.showAdminSignupPage == showAdminSignupPage &&
    other.trackWorkspaceUsage == trackWorkspaceUsage &&
    other.showBaserowHelpRequest == showBaserowHelpRequest &&
    other.coBrandingLogo == coBrandingLogo &&
    other.emailVerification == emailVerification &&
    other.verifyImportSignature == verifyImportSignature;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allowNewSignups == null ? 0 : allowNewSignups!.hashCode) +
    (allowSignupsViaWorkspaceInvitations == null ? 0 : allowSignupsViaWorkspaceInvitations!.hashCode) +
    (allowResetPassword == null ? 0 : allowResetPassword!.hashCode) +
    (allowGlobalWorkspaceCreation == null ? 0 : allowGlobalWorkspaceCreation!.hashCode) +
    (accountDeletionGraceDelay == null ? 0 : accountDeletionGraceDelay!.hashCode) +
    (showAdminSignupPage == null ? 0 : showAdminSignupPage!.hashCode) +
    (trackWorkspaceUsage == null ? 0 : trackWorkspaceUsage!.hashCode) +
    (showBaserowHelpRequest == null ? 0 : showBaserowHelpRequest!.hashCode) +
    (coBrandingLogo == null ? 0 : coBrandingLogo!.hashCode) +
    (emailVerification == null ? 0 : emailVerification!.hashCode) +
    (verifyImportSignature == null ? 0 : verifyImportSignature!.hashCode);

  @override
  String toString() => 'Settings[allowNewSignups=$allowNewSignups, allowSignupsViaWorkspaceInvitations=$allowSignupsViaWorkspaceInvitations, allowResetPassword=$allowResetPassword, allowGlobalWorkspaceCreation=$allowGlobalWorkspaceCreation, accountDeletionGraceDelay=$accountDeletionGraceDelay, showAdminSignupPage=$showAdminSignupPage, trackWorkspaceUsage=$trackWorkspaceUsage, showBaserowHelpRequest=$showBaserowHelpRequest, coBrandingLogo=$coBrandingLogo, emailVerification=$emailVerification, verifyImportSignature=$verifyImportSignature]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.allowNewSignups != null) {
      json[r'allow_new_signups'] = this.allowNewSignups;
    } else {
      json[r'allow_new_signups'] = null;
    }
    if (this.allowSignupsViaWorkspaceInvitations != null) {
      json[r'allow_signups_via_workspace_invitations'] = this.allowSignupsViaWorkspaceInvitations;
    } else {
      json[r'allow_signups_via_workspace_invitations'] = null;
    }
    if (this.allowResetPassword != null) {
      json[r'allow_reset_password'] = this.allowResetPassword;
    } else {
      json[r'allow_reset_password'] = null;
    }
    if (this.allowGlobalWorkspaceCreation != null) {
      json[r'allow_global_workspace_creation'] = this.allowGlobalWorkspaceCreation;
    } else {
      json[r'allow_global_workspace_creation'] = null;
    }
    if (this.accountDeletionGraceDelay != null) {
      json[r'account_deletion_grace_delay'] = this.accountDeletionGraceDelay;
    } else {
      json[r'account_deletion_grace_delay'] = null;
    }
    if (this.showAdminSignupPage != null) {
      json[r'show_admin_signup_page'] = this.showAdminSignupPage;
    } else {
      json[r'show_admin_signup_page'] = null;
    }
    if (this.trackWorkspaceUsage != null) {
      json[r'track_workspace_usage'] = this.trackWorkspaceUsage;
    } else {
      json[r'track_workspace_usage'] = null;
    }
    if (this.showBaserowHelpRequest != null) {
      json[r'show_baserow_help_request'] = this.showBaserowHelpRequest;
    } else {
      json[r'show_baserow_help_request'] = null;
    }
    if (this.coBrandingLogo != null) {
      json[r'co_branding_logo'] = this.coBrandingLogo;
    } else {
      json[r'co_branding_logo'] = null;
    }
    if (this.emailVerification != null) {
      json[r'email_verification'] = this.emailVerification;
    } else {
      json[r'email_verification'] = null;
    }
    if (this.verifyImportSignature != null) {
      json[r'verify_import_signature'] = this.verifyImportSignature;
    } else {
      json[r'verify_import_signature'] = null;
    }
    return json;
  }

  /// Returns a new [Settings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Settings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Settings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Settings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Settings(
        allowNewSignups: mapValueOfType<bool>(json, r'allow_new_signups'),
        allowSignupsViaWorkspaceInvitations: mapValueOfType<bool>(json, r'allow_signups_via_workspace_invitations'),
        allowResetPassword: mapValueOfType<bool>(json, r'allow_reset_password'),
        allowGlobalWorkspaceCreation: mapValueOfType<bool>(json, r'allow_global_workspace_creation'),
        accountDeletionGraceDelay: mapValueOfType<int>(json, r'account_deletion_grace_delay'),
        showAdminSignupPage: mapValueOfType<bool>(json, r'show_admin_signup_page'),
        trackWorkspaceUsage: mapValueOfType<bool>(json, r'track_workspace_usage'),
        showBaserowHelpRequest: mapValueOfType<bool>(json, r'show_baserow_help_request'),
        coBrandingLogo: UserFile.fromJson(json[r'co_branding_logo']),
        emailVerification: EmailVerificationEnum.fromJson(json[r'email_verification']),
        verifyImportSignature: mapValueOfType<bool>(json, r'verify_import_signature'),
      );
    }
    return null;
  }

  static List<Settings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Settings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Settings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Settings> mapFromJson(dynamic json) {
    final map = <String, Settings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Settings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Settings-objects as value to a dart map
  static Map<String, List<Settings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Settings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Settings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


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


/// tests for JobsApi
void main() {
  // final instance = JobsApi();

  group('tests for JobsApi', () {
    // Cancels a job. Note: you can cancel only a scheduled or a job that is already running. The user requesting must be the owner of the job to cancel.
    //
    //Future<JobTypeJob> cancelJob(int jobId) async
    test('test cancelJob', () async {
      // TODO
    });

    // Creates a new job. This job runs asynchronously in the background and execute the task specific to the provided typeparameters. The `get_job` can be used to get the current state of the job.
    //
    //Future<JobTypeJob> createJob({ JobTypeCreateJob jobTypeCreateJob }) async
    test('test createJob', () async {
      // TODO
    });

    // Returns the information related to the provided job id. This endpoint can for example be polled to get the state and progress of the job in real time.
    //
    //Future<JobTypeJob> getJob(int jobId) async
    test('test getJob', () async {
      // TODO
    });

    // List all existing jobs. Jobs are task executed asynchronously in the background. You can use the `get_job` endpoint to read the currentprogress of a the job.
    //
    //Future<List<JobTypeJob>> listJob({ String jobIds, String states }) async
    test('test listJob', () async {
      // TODO
    });

  });
}

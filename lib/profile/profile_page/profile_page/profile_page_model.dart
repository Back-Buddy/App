import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadedImage = false;
  FFUploadedFile uploadedLocalFile_uploadedImage =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadedImage = '';

  Completer<ApiCallResponse>? apiRequestCompleter3;
  // Stores action output result for [Backend Call - API (api FollowUser)] action in Button widget.
  ApiCallResponse? apiResultuibCopy2;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  // Stores action output result for [Backend Call - API (api UnfollowUser)] action in Button widget.
  ApiCallResponse? apiResultuibCopy;
  // State field(s) for NewsfeedListView widget.

  PagingController<ApiPagingParams, dynamic>? newsfeedListViewPagingController;
  Function(ApiPagingParams nextPageMarker)? newsfeedListViewApiCall;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newsfeedListViewPagingController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForOnePageForNewsfeedListView({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (newsfeedListViewPagingController?.nextPageKey?.nextPageNumber ?? 0) >
              0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  PagingController<ApiPagingParams, dynamic> setNewsfeedListViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    newsfeedListViewApiCall = apiCall;
    return newsfeedListViewPagingController ??=
        _createNewsfeedListViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createNewsfeedListViewController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller
      ..addPageRequestListener(newsfeedListViewApiReportSingleUserPage);
  }

  void newsfeedListViewApiReportSingleUserPage(
          ApiPagingParams nextPageMarker) =>
      newsfeedListViewApiCall!(nextPageMarker)
          .then((newsfeedListViewApiReportSingleUserResponse) {
        final pageItems = ((newsfeedListViewApiReportSingleUserResponse.jsonBody
                        .toList()
                        .map<ReportStruct?>(ReportStruct.maybeFromMap)
                        .toList() as Iterable<ReportStruct?>)
                    .withoutNulls ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        newsfeedListViewPagingController?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: newsfeedListViewApiReportSingleUserResponse,
                )
              : null,
        );
      });
}

import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'back_buddy_home_feed_widget.dart' show BackBuddyHomeFeedWidget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class BackBuddyHomeFeedModel extends FlutterFlowModel<BackBuddyHomeFeedWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NewsfeedListView widget.

  PagingController<ApiPagingParams, dynamic>? newsfeedListViewPagingController;
  Function(ApiPagingParams nextPageMarker)? newsfeedListViewApiCall;

  // Stores action output result for [Backend Call - API (apivDevice GET)] action in FloatingActionButton widget.
  ApiCallResponse? apiResulta95;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newsfeedListViewPagingController?.dispose();
  }

  /// Additional helper methods.
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
      ..addPageRequestListener(newsfeedListViewApiReportFeedGETPage);
  }

  void newsfeedListViewApiReportFeedGETPage(ApiPagingParams nextPageMarker) =>
      newsfeedListViewApiCall!(nextPageMarker)
          .then((newsfeedListViewApiReportFeedGETResponse) {
        final pageItems = ((newsfeedListViewApiReportFeedGETResponse.jsonBody
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
                  lastResponse: newsfeedListViewApiReportFeedGETResponse,
                )
              : null,
        );
      });

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
}

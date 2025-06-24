import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'report_component_widget.dart' show ReportComponentWidget;
import 'package:flutter/material.dart';

class ReportComponentModel extends FlutterFlowModel<ReportComponentWidget> {
  ///  Local state fields for this component.

  bool isLikedByRequester = false;

  int? likeCount;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (api Report Like)] action in Row widget.
  ApiCallResponse? apiReportLike;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

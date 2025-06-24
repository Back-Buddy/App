import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'edit_single_device_component_widget.dart'
    show EditSingleDeviceComponentWidget;
import 'package:flutter/material.dart';

class EditSingleDeviceComponentModel
    extends FlutterFlowModel<EditSingleDeviceComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (apivDeviceid PATCH ACTIVE)] action in Switch widget.
  ApiCallResponse? apiResultb0d;
  // Stores action output result for [Backend Call - API (apivDeviceid PATCH ACTIVE)] action in Switch widget.
  ApiCallResponse? apiResultb0dCopy;
  Completer<ApiCallResponse>? apiRequestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_device_name_component_widget.dart'
    show NewDeviceNameComponentWidget;
import 'package:flutter/material.dart';

class NewDeviceNameComponentModel
    extends FlutterFlowModel<NewDeviceNameComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DeviceName widget.
  FocusNode? deviceNameFocusNode;
  TextEditingController? deviceNameTextController;
  String? Function(BuildContext, String?)? deviceNameTextControllerValidator;
  // Stores action output result for [Backend Call - API (apivDeviceid PATCH NAME)] action in Button widget.
  ApiCallResponse? apiResult88x;
  // Stores action output result for [Backend Call - API (/api/v1/Device POST)] action in Button widget.
  ApiCallResponse? newDeviceResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    deviceNameFocusNode?.dispose();
    deviceNameTextController?.dispose();
  }
}

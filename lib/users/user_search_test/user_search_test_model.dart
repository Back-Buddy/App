import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_search_test_widget.dart' show UserSearchTestWidget;
import 'package:flutter/material.dart';

class UserSearchTestModel extends FlutterFlowModel<UserSearchTestWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (apivUser Search)] action in TextField widget.
  ApiCallResponse? apiResult17a;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

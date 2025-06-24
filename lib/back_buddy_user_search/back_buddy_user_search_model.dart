import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'back_buddy_user_search_widget.dart' show BackBuddyUserSearchWidget;
import 'package:flutter/material.dart';

class BackBuddyUserSearchModel
    extends FlutterFlowModel<BackBuddyUserSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (apivUser Search)] action in BackBuddyUserSearch widget.
  ApiCallResponse? apiResult401;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

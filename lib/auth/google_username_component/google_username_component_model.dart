import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'google_username_component_widget.dart'
    show GoogleUsernameComponentWidget;
import 'package:flutter/material.dart';

class GoogleUsernameComponentModel
    extends FlutterFlowModel<GoogleUsernameComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? existingUser;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'manage_users_widget.dart' show ManageUsersWidget;
import 'package:flutter/material.dart';

class ManageUsersModel extends FlutterFlowModel<ManageUsersWidget> {
  ///  State fields for stateful widgets in this page.

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

import '/flutter_flow/flutter_flow_util.dart';
import 'clients_admin_copy_widget.dart' show ClientsAdminCopyWidget;
import 'package:flutter/material.dart';

class ClientsAdminCopyModel extends FlutterFlowModel<ClientsAdminCopyWidget> {
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

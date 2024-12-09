import '/admin/profile/nav_bar_admin/nav_bar_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'clients_admin_widget.dart' show ClientsAdminWidget;
import 'package:flutter/material.dart';

class ClientsAdminModel extends FlutterFlowModel<ClientsAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NavBarAdmin component.
  late NavBarAdminModel navBarAdminModel;

  @override
  void initState(BuildContext context) {
    navBarAdminModel = createModel(context, () => NavBarAdminModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navBarAdminModel.dispose();
  }
}

import '/admin/profile/nav_bar_admin/nav_bar_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'visits_home_widget.dart' show VisitsHomeWidget;
import 'package:flutter/material.dart';

class VisitsHomeModel extends FlutterFlowModel<VisitsHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for NavBarAdmin component.
  late NavBarAdminModel navBarAdminModel;

  @override
  void initState(BuildContext context) {
    navBarAdminModel = createModel(context, () => NavBarAdminModel());
  }

  @override
  void dispose() {
    navBarAdminModel.dispose();
  }
}

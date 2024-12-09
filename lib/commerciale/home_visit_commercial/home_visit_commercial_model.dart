import '/commerciale/nav_bar_commercial/nav_bar_commercial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_visit_commercial_widget.dart' show HomeVisitCommercialWidget;
import 'package:flutter/material.dart';

class HomeVisitCommercialModel
    extends FlutterFlowModel<HomeVisitCommercialWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for NavBarCommercial component.
  late NavBarCommercialModel navBarCommercialModel;

  @override
  void initState(BuildContext context) {
    navBarCommercialModel = createModel(context, () => NavBarCommercialModel());
  }

  @override
  void dispose() {
    navBarCommercialModel.dispose();
  }
}

import '/commerciale/nav_bar_commercial/nav_bar_commercial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_commercial_widget.dart' show HomePageCommercialWidget;
import 'package:flutter/material.dart';

class HomePageCommercialModel
    extends FlutterFlowModel<HomePageCommercialWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NavBarCommercial component.
  late NavBarCommercialModel navBarCommercialModel;

  @override
  void initState(BuildContext context) {
    navBarCommercialModel = createModel(context, () => NavBarCommercialModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navBarCommercialModel.dispose();
  }
}

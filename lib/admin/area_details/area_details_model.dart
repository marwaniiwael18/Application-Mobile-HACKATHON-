import '/flutter_flow/flutter_flow_util.dart';
import 'area_details_widget.dart' show AreaDetailsWidget;
import 'package:flutter/material.dart';

class AreaDetailsModel extends FlutterFlowModel<AreaDetailsWidget> {
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

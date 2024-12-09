import '/flutter_flow/flutter_flow_util.dart';
import 'areas_widget.dart' show AreasWidget;
import 'package:flutter/material.dart';

class AreasModel extends FlutterFlowModel<AreasWidget> {
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

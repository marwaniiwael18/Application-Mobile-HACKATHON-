import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_visit_widget.dart' show AddVisitWidget;
import 'package:flutter/material.dart';

class AddVisitModel extends FlutterFlowModel<AddVisitWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? result;
  // State field(s) for folderTitle widget.
  FocusNode? folderTitleFocusNode1;
  TextEditingController? folderTitleTextController1;
  String? Function(BuildContext, String?)? folderTitleTextController1Validator;
  // State field(s) for folderTitle widget.
  FocusNode? folderTitleFocusNode2;
  TextEditingController? folderTitleTextController2;
  String? Function(BuildContext, String?)? folderTitleTextController2Validator;
  // Stores action output result for [Backend Call - Create Document] action in Annual widget.
  VisitFileRecord? file;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    folderTitleFocusNode1?.dispose();
    folderTitleTextController1?.dispose();

    folderTitleFocusNode2?.dispose();
    folderTitleTextController2?.dispose();
  }
}

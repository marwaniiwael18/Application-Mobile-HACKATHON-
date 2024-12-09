import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_client_widget.dart' show AddClientWidget;
import 'package:flutter/material.dart';

class AddClientModel extends FlutterFlowModel<AddClientWidget> {
  ///  Local state fields for this component.

  DocumentReference? gouv;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for folderTitle widget.
  FocusNode? folderTitleFocusNode1;
  TextEditingController? folderTitleTextController1;
  String? Function(BuildContext, String?)? folderTitleTextController1Validator;
  String? _folderTitleTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Title is required.';
    }

    return null;
  }

  // State field(s) for folderTitle widget.
  FocusNode? folderTitleFocusNode2;
  TextEditingController? folderTitleTextController2;
  String? Function(BuildContext, String?)? folderTitleTextController2Validator;
  String? _folderTitleTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {
    folderTitleTextController1Validator = _folderTitleTextController1Validator;
    folderTitleTextController2Validator = _folderTitleTextController2Validator;
  }

  @override
  void dispose() {
    folderTitleFocusNode1?.dispose();
    folderTitleTextController1?.dispose();

    folderTitleFocusNode2?.dispose();
    folderTitleTextController2?.dispose();
  }
}

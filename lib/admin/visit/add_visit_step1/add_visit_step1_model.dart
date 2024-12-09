import '/flutter_flow/flutter_flow_util.dart';
import 'add_visit_step1_widget.dart' show AddVisitStep1Widget;
import 'package:flutter/material.dart';

class AddVisitStep1Model extends FlutterFlowModel<AddVisitStep1Widget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for folderTitle widget.
  FocusNode? folderTitleFocusNode;
  TextEditingController? folderTitleTextController;
  String? Function(BuildContext, String?)? folderTitleTextControllerValidator;
  String? _folderTitleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Title is required.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    folderTitleTextControllerValidator = _folderTitleTextControllerValidator;
  }

  @override
  void dispose() {
    folderTitleFocusNode?.dispose();
    folderTitleTextController?.dispose();
  }
}

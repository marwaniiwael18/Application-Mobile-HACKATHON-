import '/flutter_flow/flutter_flow_util.dart';
import 'add_enemy_widget.dart' show AddEnemyWidget;
import 'package:flutter/material.dart';

class AddEnemyModel extends FlutterFlowModel<AddEnemyWidget> {
  ///  Local state fields for this component.

  DocumentReference? gouv;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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

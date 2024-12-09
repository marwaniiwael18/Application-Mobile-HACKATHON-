import '/flutter_flow/flutter_flow_util.dart';
import 'add_area_widget.dart' show AddAreaWidget;
import 'package:flutter/material.dart';

class AddAreaModel extends FlutterFlowModel<AddAreaWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> selectedGoub = [];
  void addToSelectedGoub(DocumentReference item) => selectedGoub.add(item);
  void removeFromSelectedGoub(DocumentReference item) =>
      selectedGoub.remove(item);
  void removeAtIndexFromSelectedGoub(int index) => selectedGoub.removeAt(index);
  void insertAtIndexInSelectedGoub(int index, DocumentReference item) =>
      selectedGoub.insert(index, item);
  void updateSelectedGoubAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      selectedGoub[index] = updateFn(selectedGoub[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for folderTitle widget.
  FocusNode? folderTitleFocusNode;
  TextEditingController? folderTitleTextController;
  String? Function(BuildContext, String?)? folderTitleTextControllerValidator;
  String? _folderTitleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Area Name  is required.';
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

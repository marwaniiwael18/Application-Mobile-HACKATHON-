import '/flutter_flow/flutter_flow_util.dart';
import 'affecter_gover_widget.dart' show AffecterGoverWidget;
import 'package:flutter/material.dart';

class AffecterGoverModel extends FlutterFlowModel<AffecterGoverWidget> {
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

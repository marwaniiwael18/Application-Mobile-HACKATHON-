import '/flutter_flow/flutter_flow_util.dart';
import 'add_pin_widget.dart' show AddPinWidget;
import 'package:flutter/material.dart';

class AddPinModel extends FlutterFlowModel<AddPinWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}

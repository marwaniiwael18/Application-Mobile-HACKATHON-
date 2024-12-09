import '/flutter_flow/flutter_flow_util.dart';
import 'check_code_pin_widget.dart' show CheckCodePinWidget;
import 'package:flutter/material.dart';

class CheckCodePinModel extends FlutterFlowModel<CheckCodePinWidget> {
  ///  State fields for stateful widgets in this page.

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

import '/flutter_flow/flutter_flow_util.dart';
import 'add_product_widget.dart' show AddProductWidget;
import 'package:flutter/material.dart';

class AddProductModel extends FlutterFlowModel<AddProductWidget> {
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

  // State field(s) for folderTitle widget.
  FocusNode? folderTitleFocusNode3;
  TextEditingController? folderTitleTextController3;
  String? Function(BuildContext, String?)? folderTitleTextController3Validator;
  String? _folderTitleTextController3Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    folderTitleTextController1Validator = _folderTitleTextController1Validator;
    folderTitleTextController2Validator = _folderTitleTextController2Validator;
    folderTitleTextController3Validator = _folderTitleTextController3Validator;
  }

  @override
  void dispose() {
    folderTitleFocusNode1?.dispose();
    folderTitleTextController1?.dispose();

    folderTitleFocusNode2?.dispose();
    folderTitleTextController2?.dispose();

    folderTitleFocusNode3?.dispose();
    folderTitleTextController3?.dispose();
  }
}

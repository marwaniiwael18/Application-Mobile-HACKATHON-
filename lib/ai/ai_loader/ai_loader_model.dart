import '/ai/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ai_loader_widget.dart' show AiLoaderWidget;
import 'package:flutter/material.dart';

class AiLoaderModel extends FlutterFlowModel<AiLoaderWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    loaderModel.dispose();
  }
}

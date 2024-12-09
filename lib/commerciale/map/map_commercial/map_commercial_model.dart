import '/commerciale/nav_bar_commercial/nav_bar_commercial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'map_commercial_widget.dart' show MapCommercialWidget;
import 'package:flutter/material.dart';

class MapCommercialModel extends FlutterFlowModel<MapCommercialWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBarCommercial component.
  late NavBarCommercialModel navBarCommercialModel;

  @override
  void initState(BuildContext context) {
    navBarCommercialModel = createModel(context, () => NavBarCommercialModel());
  }

  @override
  void dispose() {
    navBarCommercialModel.dispose();
  }
}

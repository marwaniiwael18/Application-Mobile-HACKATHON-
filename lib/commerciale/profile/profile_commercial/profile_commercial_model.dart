import '/commerciale/nav_bar_commercial/nav_bar_commercial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_commercial_widget.dart' show ProfileCommercialWidget;
import 'package:flutter/material.dart';

class ProfileCommercialModel extends FlutterFlowModel<ProfileCommercialWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;
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

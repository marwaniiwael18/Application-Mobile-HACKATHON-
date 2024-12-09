import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_client3_widget.dart' show AddClient3Widget;
import 'package:flutter/material.dart';

class AddClient3Model extends FlutterFlowModel<AddClient3Widget> {
  ///  Local state fields for this component.

  DocumentReference? gouv;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();
  // Stores action output result for [Backend Call - Create Document] action in Annual widget.
  MarketRecord? clientt;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

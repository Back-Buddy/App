import '/flutter_flow/flutter_flow_util.dart';
import '/profile/manage_devices/dynamic_devices_component/dynamic_devices_component_widget.dart';
import 'manage_devices_component_widget.dart' show ManageDevicesComponentWidget;
import 'package:flutter/material.dart';

class ManageDevicesComponentModel
    extends FlutterFlowModel<ManageDevicesComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for DynamicDevicesComponent component.
  late DynamicDevicesComponentModel dynamicDevicesComponentModel;

  @override
  void initState(BuildContext context) {
    dynamicDevicesComponentModel =
        createModel(context, () => DynamicDevicesComponentModel());
  }

  @override
  void dispose() {
    dynamicDevicesComponentModel.dispose();
  }
}

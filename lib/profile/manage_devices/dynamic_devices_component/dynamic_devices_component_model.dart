import '/flutter_flow/flutter_flow_util.dart';
import '/profile/manage_devices/render_list_of_devices_component/render_list_of_devices_component_widget.dart';
import 'dynamic_devices_component_widget.dart'
    show DynamicDevicesComponentWidget;
import 'package:flutter/material.dart';

class DynamicDevicesComponentModel
    extends FlutterFlowModel<DynamicDevicesComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for RenderListOfDevicesComponent dynamic component.
  late FlutterFlowDynamicModels<RenderListOfDevicesComponentModel>
      renderListOfDevicesComponentModels;

  @override
  void initState(BuildContext context) {
    renderListOfDevicesComponentModels =
        FlutterFlowDynamicModels(() => RenderListOfDevicesComponentModel());
  }

  @override
  void dispose() {
    renderListOfDevicesComponentModels.dispose();
  }
}

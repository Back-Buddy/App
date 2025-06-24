import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/manage_devices/render_list_of_devices_component/render_list_of_devices_component_widget.dart';
import 'package:flutter/material.dart';
import 'dynamic_devices_component_model.dart';
export 'dynamic_devices_component_model.dart';

class DynamicDevicesComponentWidget extends StatefulWidget {
  const DynamicDevicesComponentWidget({super.key});

  @override
  State<DynamicDevicesComponentWidget> createState() =>
      _DynamicDevicesComponentWidgetState();
}

class _DynamicDevicesComponentWidgetState
    extends State<DynamicDevicesComponentWidget> {
  late DynamicDevicesComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DynamicDevicesComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: BackBuddyAPIGroup.apivDeviceGETCall.call(
        authToken: currentJwtToken,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        final listViewApivDeviceGETResponse = snapshot.data!;

        return Builder(
          builder: (context) {
            final deviceList = listViewApivDeviceGETResponse.jsonBody
                .toList()
                .take(3)
                .toList();

            return ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: deviceList.length,
              itemBuilder: (context, deviceListIndex) {
                final deviceListItem = deviceList[deviceListIndex];
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: wrapWithModel(
                    model: _model.renderListOfDevicesComponentModels.getModel(
                      deviceListItem.toString(),
                      deviceListIndex,
                    ),
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: RenderListOfDevicesComponentWidget(
                      key: Key(
                        'Keymzw_${deviceListItem.toString()}',
                      ),
                      activeState: getJsonField(
                        deviceListItem,
                        r'''$.active''',
                      ),
                      name: getJsonField(
                        deviceListItem,
                        r'''$.name''',
                      ).toString(),
                      threshold: getJsonField(
                        deviceListItem,
                        r'''$.threshold''',
                      ).toString(),
                      deviceID: getJsonField(
                        deviceListItem,
                        r'''$.id''',
                      ).toString(),
                      connectedState: getJsonField(
                        deviceListItem,
                        r'''$.online''',
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

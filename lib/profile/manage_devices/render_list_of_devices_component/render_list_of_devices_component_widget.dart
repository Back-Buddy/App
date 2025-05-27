import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/manage_devices/confirm_device_delete_component/confirm_device_delete_component_widget.dart';
import '/profile/manage_devices/edit_single_device_component/edit_single_device_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'render_list_of_devices_component_model.dart';
export 'render_list_of_devices_component_model.dart';

class RenderListOfDevicesComponentWidget extends StatefulWidget {
  const RenderListOfDevicesComponentWidget({
    super.key,
    this.activeState,
    this.name,
    this.threshold,
    this.deviceID,
    required this.connectedState,
  });

  final bool? activeState;
  final String? name;
  final String? threshold;
  final String? deviceID;
  final bool? connectedState;

  @override
  State<RenderListOfDevicesComponentWidget> createState() =>
      _RenderListOfDevicesComponentWidgetState();
}

class _RenderListOfDevicesComponentWidgetState
    extends State<RenderListOfDevicesComponentWidget> {
  late RenderListOfDevicesComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RenderListOfDevicesComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          Icons.signal_wifi_statusbar_4_bar,
          color: (bool connectedState) {
            return connectedState == false
                ? Color(0xFFFF5963)
                : Color(0xFFB2FF58);
          }(widget.connectedState!),
          size: 24.0,
        ),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.611,
          height: 63.4,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: Material(
            color: Colors.transparent,
            child: SwitchListTile.adaptive(
              value: _model.switchListTileValue ??= widget.activeState!,
              onChanged: (newValue) async {
                safeSetState(() => _model.switchListTileValue = newValue);
                if (newValue) {
                  _model.apiResultg22 =
                      await BackBuddyAPIGroup.apivDeviceidPATCHACTIVECall.call(
                    id: widget.deviceID,
                    authToken: currentJwtToken,
                    active: true,
                  );

                  FFAppState().refreshTrigger = false;
                  _model.updatePage(() {});

                  safeSetState(() {});
                } else {
                  _model.apiResultg22Copy =
                      await BackBuddyAPIGroup.apivDeviceidPATCHACTIVECall.call(
                    id: widget.deviceID,
                    authToken: currentJwtToken,
                    active: false,
                  );

                  FFAppState().refreshTrigger = false;
                  _model.updatePage(() {});

                  safeSetState(() {});
                }
              },
              title: Text(
                widget.name!,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      font: GoogleFonts.plusJakartaSans(
                        fontWeight:
                            FlutterFlowTheme.of(context).titleLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleLarge.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).titleLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
                    ),
              ),
              subtitle: Text(
                widget.threshold!,
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              activeColor: FlutterFlowTheme.of(context).alternate,
              activeTrackColor: FlutterFlowTheme.of(context).primary,
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            shape: BoxShape.rectangle,
          ),
          child: Builder(
            builder: (context) => FlutterFlowIconButton(
              borderRadius: 10.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).error,
              icon: Icon(
                Icons.delete,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      elevation: 0,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      alignment: AlignmentDirectional(0.0, 0.0)
                          .resolve(Directionality.of(context)),
                      child: ConfirmDeviceDeleteComponentWidget(
                        deviceID: widget.deviceID!,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
        Builder(
          builder: (context) => Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).primaryBackground,
              icon: Icon(
                Icons.create,
                color: FlutterFlowTheme.of(context).primary,
                size: 24.0,
              ),
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      elevation: 0,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      alignment: AlignmentDirectional(0.0, 0.0)
                          .resolve(Directionality.of(context)),
                      child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.65,
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        child: EditSingleDeviceComponentWidget(
                          deviceID: widget.deviceID!,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

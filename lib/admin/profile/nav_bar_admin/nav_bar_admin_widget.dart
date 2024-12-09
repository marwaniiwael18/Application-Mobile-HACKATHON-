import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'nav_bar_admin_model.dart';
export 'nav_bar_admin_model.dart';

class NavBarAdminWidget extends StatefulWidget {
  const NavBarAdminWidget({
    super.key,
    this.activePage,
  });

  final int? activePage;

  @override
  State<NavBarAdminWidget> createState() => _NavBarAdminWidgetState();
}

class _NavBarAdminWidgetState extends State<NavBarAdminWidget> {
  late NavBarAdminModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarAdminModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: SizedBox(
        height: 133.0,
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                HapticFeedback.lightImpact();

                                context.goNamed(
                                  'AdminHome',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.query_stats_rounded,
                                    color: widget.activePage == 1
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x8B1B263B),
                                    size: 32.0,
                                  ),
                                  Text(
                                    'OverView',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto Mono',
                                          color: widget.activePage == 1
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : const Color(0x8B1B263B),
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ]
                                    .divide(const SizedBox(height: 6.0))
                                    .addToStart(const SizedBox(height: 12.0))
                                    .addToEnd(const SizedBox(height: 12.0)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                HapticFeedback.lightImpact();

                                context.goNamed(
                                  'ClientsAdmin',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.groups_2,
                                    color: widget.activePage == 2
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x8B1B263B),
                                    size: 32.0,
                                  ),
                                  Text(
                                    'Clients',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto Mono',
                                          color: widget.activePage == 2
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : const Color(0x8B1B263B),
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ]
                                    .divide(const SizedBox(height: 6.0))
                                    .addToStart(const SizedBox(height: 12.0))
                                    .addToEnd(const SizedBox(height: 12.0)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                HapticFeedback.lightImpact();

                                context.goNamed(
                                  'VisitsHome',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.work_outline,
                                    color: widget.activePage == 3
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x8B1B263B),
                                    size: 32.0,
                                  ),
                                  Text(
                                    'Visits',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto Mono',
                                          color: widget.activePage == 3
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : const Color(0x8B1B263B),
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ]
                                    .divide(const SizedBox(height: 6.0))
                                    .addToStart(const SizedBox(height: 12.0))
                                    .addToEnd(const SizedBox(height: 12.0)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                HapticFeedback.lightImpact();

                                context.goNamed(
                                  'Profile',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.person_4,
                                    color: widget.activePage == 4
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x8B1B263B),
                                    size: 32.0,
                                  ),
                                  Text(
                                    'Profile',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto Mono',
                                          color: widget.activePage == 4
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : const Color(0x8B1B263B),
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ]
                                    .divide(const SizedBox(height: 6.0))
                                    .addToStart(const SizedBox(height: 12.0))
                                    .addToEnd(const SizedBox(height: 12.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

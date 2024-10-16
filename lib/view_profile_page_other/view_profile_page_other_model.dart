import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/chat/empty_state_simple/empty_state_simple_widget.dart';
import '/components/user_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'view_profile_page_other_widget.dart' show ViewProfilePageOtherWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ViewProfilePageOtherModel
    extends FlutterFlowModel<ViewProfilePageOtherWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in friend widget.
  FriendsRecord? customFriendsDoc;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Models for userList dynamic component.
  late FlutterFlowDynamicModels<UserListModel> userListModels;

  @override
  void initState(BuildContext context) {
    userListModels = FlutterFlowDynamicModels(() => UserListModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    userListModels.dispose();
  }
}

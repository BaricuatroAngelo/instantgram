import 'dart:collection' show MapView;

import 'package:flutter/foundation.dart' show immutable;

import '../../auth/constants/firebase_field_name.dart';
import '../../auth/posts/typedef/user_id.dart';

@immutable
class UserInfoPayload extends MapView<String, String> {
  UserInfoPayload({
    required UserId userId,
    required String? displayName,
    required String? email,
  }) : super(
    {
      FirebaseFieldName.userId: userId,
      FirebaseFieldName.displayName: displayName ?? '',
      FirebaseFieldName.email: email ?? '',
    },
  );
}
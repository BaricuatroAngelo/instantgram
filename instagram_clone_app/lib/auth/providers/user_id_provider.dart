import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone_app/auth/providers/auth_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:instagram_clone_app/state/posts/typedefs/user_id.dart';

part 'user_id_provider.g.dart';


@riverpod
UserId? userId(UserIdRef ref) => ref
    .watch(
    authStateProvider,
)
    .userId;
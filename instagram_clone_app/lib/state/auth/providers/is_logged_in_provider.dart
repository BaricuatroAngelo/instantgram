import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:instagram_clone_app/state/auth/models/auth_result.dart';
import 'package:instagram_clone_app/state/auth/providers/auth_state_provider.dart';

part 'is_logged_in_provider.g.dart';

@riverpod
bool isLoggedIn(IsLoggedInRef ref) {
  final authProvider = ref.watch(authStateProvider);
  return authProvider.result == AuthResult.success;
}

/*
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:instagram_clone_app/auth/providers/auth_state_provider.dart';
import 'package:instagram_clone_app/state/comments/providers/delete_comment_provider.dart';
import 'package:instagram_clone_app/state/comments/providers/send_comment_provider.dart';
import 'package:instagram_clone_app/state/image_upload/providers/image_uploader_provider.dart';
import 'package:instagram_clone_app/state/posts/providers/delete_post_provider.dart';

@riverpod
bool isLoading(IsLoadingRef ref) {
  final authState = ref.watch(authStateProvider);
  final isUploadingImage = ref.watch(imageUploaderProvider);
  final isSendingComment = ref.watch(sendCommentProvider);
  final isDeletingComment = ref.watch(deleteCommentProvider);
  final isDeletingPost = ref.watch(deletePostProvider);
  return authState.isLoading ||
      isUploadingImage ||
      isSendingComment ||
      isDeletingComment ||
      isDeletingPost;
}

 */
 
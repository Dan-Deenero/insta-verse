import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instaverse/state/auth/providers/auth_state_provider.dart';
import 'package:instaverse/state/comments/providers/delete_comment_provider.dart';
import 'package:instaverse/state/comments/providers/send_comment_provider.dart';
import 'package:instaverse/state/image_upload/provider/image_uploader_provider.dart';
import 'package:instaverse/state/posts/providers/delete_post_provider.dart';

final isLoadingProvider = Provider<bool>((ref) {
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
});

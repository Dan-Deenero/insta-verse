import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instaverse/state/comments/notifiers/delete_comment_notifier.dart';
import 'package:instaverse/state/image_upload/typedefs/is_loading.dart';

final deleteCommentProvider =
    StateNotifierProvider<DeleteCommentStateNotifier, IsLoading>(
  (_) => DeleteCommentStateNotifier(),
);

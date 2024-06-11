import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instaverse/state/auth/providers/auth_state_provider.dart';
import 'package:instaverse/state/image_upload/provider/image_uploader_provider.dart';

final isLoadingProvider = Provider<bool>((ref) {
  final authState = ref.watch(authStateProvider);
  final isUploadingImage = ref.watch(imageUploaderProvider);

  return authState.isLoading || isUploadingImage;
});
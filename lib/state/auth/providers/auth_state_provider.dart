import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instaverse/state/auth/models/auth_state.dart';
import 'package:instaverse/state/auth/notifiers/auth_state_notifier.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
  (_) => AuthStateNotifier(),
);

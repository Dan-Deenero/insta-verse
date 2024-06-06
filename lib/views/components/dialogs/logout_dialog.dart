import 'package:flutter/foundation.dart' show immutable;
import 'package:instaverse/views/components/constatnts/strings.dart';
import 'package:instaverse/views/components/dialogs/alert_dialog_model.dart';


@immutable
class LogoutDialog extends AlertDialogModel<bool>{
  const LogoutDialog() : super(
    title: Strings.logOut,
    message: Strings.areYouSureThatYouWantToLogOutOfTheApp,
    buttons: const {
      Strings.cancel: false,
      Strings.logOut: true,
    }
  );
}
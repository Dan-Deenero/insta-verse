import 'package:flutter/foundation.dart' show immutable;
import 'package:instaverse/views/components/constatnts/strings.dart';
import 'package:instaverse/views/components/dialogs/alert_dialog_model.dart';


@immutable
class DeleteDialog extends AlertDialogModel<bool> {
  const DeleteDialog({
    required String titleOfObjectToDelete,
  }) : super(
          title: '${Strings.delete} $titleOfObjectToDelete?',
          message:
              '${Strings.areYouSureYouWantToDeleteThis} $titleOfObjectToDelete?',
          buttons: const {
            Strings.cancel: false,
            Strings.delete: true,
          },
        );
}
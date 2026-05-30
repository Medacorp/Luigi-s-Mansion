This data pack makes a single change:
The function luigis_mansion:selection_menu/dialog/original_menu now refers to luigis_mansion:selection_menu/dialog/original_menu_skip, adding the skip option

To support this add-on properly, the dialogs (that use a selection menu) should always have skip checks.
They should skip either to the next choice, or, if none, the end of the dialog.
Be sure that changing values such as flags is done even when skipping.
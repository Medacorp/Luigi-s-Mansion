tag @s add in_dialog
tag @s add dialog_menu
tag @s add dialog_choice_menu
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[]}
function #luigis_mansion:selection_menu/dialog/choice/underground_lab

function luigis_mansion:entities/player/selection_menu/load
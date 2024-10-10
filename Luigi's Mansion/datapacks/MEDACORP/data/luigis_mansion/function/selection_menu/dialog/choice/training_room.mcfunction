tag @s add in_dialog
tag @s add dialog_menu
tag @s add dialog_choice_menu
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/dialog/choice/question","minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.dialog.training_type.vanilla"}',"minecraft:custom_data":{option:{id:"reload",action:"new_dialog",value:{namespace:"luigis_mansion",id:"training_room/program"},global:0b}}}}]}
function #luigis_mansion:selection_menu/dialog/choice/training_room

function luigis_mansion:entities/player/selection_menu/load
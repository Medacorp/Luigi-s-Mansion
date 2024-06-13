tag @s add in_dialog
tag @s add dialog_menu
tag @s add dialog_choice_menu
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:damage":22,"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:custom_model_data":83,"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.dialog.underground_lab.nowhere"}',"minecraft:custom_data":{option:{id:"reload",action:"progress"}}}}]}
function #luigis_mansion:selection_menu/dialog/choice/amiibo

function luigis_mansion:entities/player/selection_menu/load
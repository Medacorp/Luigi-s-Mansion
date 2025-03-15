tag @s add in_dialog
tag @s add dialog_menu
tag @s add dialog_choice_menu
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/exit","minecraft:unbreakable":{},"minecraft:tooltip_display":{hidden_components:["minecraft:unbreakable"]},"minecraft:attribute_modifiers":[],"minecraft:item_name":{type:"translatable",translate:"luigis_mansion:item.menu.dialog.underground_lab.nowhere"},"minecraft:custom_data":{option:{id:"reload",action:"progress"}}}}]}
function #3ds_remake:selection_menu/dialog/choice/amiibo

function luigis_mansion:entities/player/selection_menu/load
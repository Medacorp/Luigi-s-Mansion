tag @s add in_dialog
tag @s add dialog_menu
tag @s remove dialog_choice_menu
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/dialog/skip","minecraft:unbreakable":{},"minecraft:tooltip_display":{hidden_components:["minecraft:unbreakable"]},"minecraft:attribute_modifiers":[],"minecraft:item_name":{type:"translatable",translate:"luigis_mansion:item.menu.dialog.skip"},"minecraft:custom_data":{option:{id:"reload",action:"skip"}}}}]}

function luigis_mansion:entities/player/selection_menu/load
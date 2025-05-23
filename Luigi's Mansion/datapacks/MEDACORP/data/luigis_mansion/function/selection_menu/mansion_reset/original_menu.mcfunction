tag @s add camera
gamemode adventure @s

tag @s add mansion_reset_menu
tellraw @s {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mansion",color:"green"},{type:"translatable",translate:"luigis_mansion:dialog.reset_mansion.1"}]}
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/dialog/choice/yes","minecraft:unbreakable":{},"minecraft:tooltip_display":{hidden_components:["minecraft:unbreakable"]},"minecraft:attribute_modifiers":[],"minecraft:item_name":{type:"translatable",translate:"luigis_mansion:item.menu.dialog.reset_mansion.yes"},"minecraft:custom_data":{option:{id:"confirmation"}}}},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/dialog/choice/no","minecraft:unbreakable":{},"minecraft:tooltip_display":{hidden_components:["minecraft:unbreakable"]},"minecraft:attribute_modifiers":[],"minecraft:item_name":{type:"translatable",translate:"luigis_mansion:item.menu.dialog.reset_mansion.no"},"minecraft:custom_data":{option:{id:"exit"}}}}]}

function luigis_mansion:entities/player/selection_menu/load
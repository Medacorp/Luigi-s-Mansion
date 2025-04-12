tag @s add in_dialog
tag @s add dialog_menu
tag @s add dialog_choice_menu
function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/dialog/choice/luigi","minecraft:unbreakable":{},"minecraft:tooltip_display":{hidden_components:["minecraft:unbreakable"]},"!minecraft:equippable":{},"minecraft:attribute_modifiers":[],"minecraft:item_name":{type:"translatable",translate:"luigis_mansion:item.menu.dialog.toad_5.yes",with:[{type:"translatable",translate:"luigis_mansion:entity.luigi"}]},"minecraft:custom_model_data":{colors:[37129]},"minecraft:custom_data":{option:{id:"reload",action:"select_branch",value:"yes"}}}},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/dialog/choice/bowser","minecraft:unbreakable":{},"minecraft:tooltip_display":{hidden_components:["minecraft:unbreakable"]},"minecraft:attribute_modifiers":[],"minecraft:item_name":{type:"translatable",translate:"luigis_mansion:item.menu.dialog.toad_5.no"},"minecraft:custom_data":{option:{id:"reload",action:"select_branch",value:"no"}}}}]}
data modify storage luigis_mansion:data menu_options.options[0].components."minecraft:custom_model_data".colors[0] set from storage luigis_mansion:data my_memory.model.color
tag @s add me
execute unless score #temp Health matches -1 in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:[{type:"translatable",translate:"luigis_mansion:item.menu.dialog.toad_5.yes",with:[{type:"selector",selector:"@a[tag=me,limit=1]"}]},{type:"text",text:""},{type:"text",text:""},{type:"text",text:""}]}}
execute unless score #temp Health matches -1 in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[0].components."minecraft:item_name" set from block 27 0 0 front_text.messages[0]
execute unless score #temp Health matches -1 in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
tag @s remove me
function luigis_mansion:entities/player/selection_menu/load
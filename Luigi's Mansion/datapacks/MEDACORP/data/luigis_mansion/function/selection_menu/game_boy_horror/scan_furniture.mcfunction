function luigis_mansion:entities/player/run_command_as_model {command:"tag @s add scanning"}
tag @s add game_boy_horror_menu

data modify storage luigis_mansion:data menu_options set value {back:{id:"original_menu",to:'{"type":"translatable","translate":"luigis_mansion:item.menu.original_menu"}'},options:[{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/game_boy_horror/scan_furniture","minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.scan_furniture"}',"minecraft:custom_data":{option:{id:"reload",action:"scan"}}}}]}

execute unless entity @s[scores={WarpTime=1..}] run function luigis_mansion:entities/player/run_command_as_model {command:"execute unless entity @s[nbt={data:{animation:{namespace:\"luigis_mansion\",id:\"game_boy_horror\"}}}] run function luigis_mansion:entities/luigi/animation/set/game_boy_horror"}
function luigis_mansion:entities/player/run_command_as_model {command:"tag @s add animation_free_rotation"}

function luigis_mansion:entities/player/selection_menu/load

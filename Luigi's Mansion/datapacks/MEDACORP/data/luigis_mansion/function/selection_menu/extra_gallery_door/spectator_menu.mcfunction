execute at @s positioned ~ ~ ~1 run function luigis_mansion:entities/player/set_position
execute at @s run function luigis_mansion:entities/player/stop_model
gamemode adventure @s

tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.extra_gallery_door.1"}]}
tag @s add extra_gallery_door_menu
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:damage":22,"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:custom_model_data":0,"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:dialog.extra_gallery_door.nowhere"}',"minecraft:custom_data":{option:{id:"exit_spectator"}}}}]}
function #luigis_mansion:selection_menu/extra_gallery_door/options

data modify storage luigis_mansion:data menu_options.options[{components:{"minecraft:custom_data":{option:{id:"go_through"}}}}].components."minecraft:custom_data".option.id set value "go_through_spectator"

function luigis_mansion:entities/player/selection_menu/load
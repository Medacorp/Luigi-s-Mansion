execute store result score @s HomeX run data get entity @s Pos[0] 100
execute store result score @s HomeY run data get entity @s Pos[1] 100
execute store result score @s HomeZ run data get entity @s Pos[2] 100
execute store result score @s HomeRotationX run data get entity @s Rotation[0]
execute store result score @s HomeRotationY run data get entity @s Rotation[1]
tag @s[tag=!separated_camera] add camera_seperated_by_game_boy_horror
execute if entity @s[tag=!separated_camera] run function luigis_mansion:entities/player/camera/separate
execute if entity @s[scores={Room=..-1}] run function #luigis_mansion:selection_menu/game_boy_horror/map/lab_warp
execute if entity @s[scores={Room=1..}] run function luigis_mansion:selection_menu/game_boy_horror/map/display/mansion with storage luigis_mansion:data current_state.current_data.mansion_id
tag @s add looking_at_map
function luigis_mansion:entities/player/run_command_as_model {command:"execute unless entity @s[nbt={data:{animation:{namespace:\"luigis_mansion\",id:\"game_boy_horror\"}}}] run function luigis_mansion:entities/luigi/animation/set/game_boy_horror"}
playsound luigis_mansion:item.game_boy_horror.map.open player @a[tag=same_room] ~ ~ ~ 1
execute at @s run playsound luigis_mansion:item.game_boy_horror.map.open player @s ~ ~ ~ 1
data modify storage luigis_mansion:data menu_options set value {back:{id:"map/close",to:'{"type":"translatable","translate":"luigis_mansion:item.menu.original_menu"}'},options:[{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/game_boy_horror/map/zoom","minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.map.zoom"}',"minecraft:custom_data":{option:{id:"reload",action:"map/zoom"}}}},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/game_boy_horror/map/move_down_floor","minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.map.move_down_floor"}',"minecraft:custom_data":{option:{id:"reload",action:"map/move_down_floor"}}}},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/game_boy_horror/map/move_up_floor","minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.map.move_up_floor"}',"minecraft:custom_data":{option:{id:"reload",action:"map/move_up_floor"}}}}]}
function luigis_mansion:entities/player/selection_menu/load
execute at @s run function luigis_mansion:main/update_last_position
scoreboard players set @s MapZoomTime 0
scoreboard players set @s MapSound 0
title @s times 0 40 40
tag @s remove scanning
tag @s remove warp
tag @s remove was_in_room
tag @s remove poltergust_selected
scoreboard players reset @s WarpTime
tag @s add game_boy_horror_menu
tag @s add selection_menu_free_to_move

execute unless entity @s[scores={Room=0}] store result score @s HomeX run data get entity @s Pos[0] 100
execute unless entity @s[scores={Room=0}] store result score @s HomeY run data get entity @s Pos[1] 100
execute unless entity @s[scores={Room=0}] store result score @s HomeZ run data get entity @s Pos[2] 100
execute unless entity @s[scores={Room=0}] store result score @s HomeRotationX run data get entity @s Rotation[0]
execute unless entity @s[scores={Room=0}] store result score @s HomeRotationY run data get entity @s Rotation[1]
execute unless entity @s[scores={Room=0}] run tag @s add opening_map
execute unless entity @s[scores={Room=0}] rotated as @s run function luigis_mansion:spawn_entities/game_boy_horror_location
execute unless entity @a[tag=looking_at_map,limit=1] unless entity @s[scores={Room=0}] rotated as @s run function luigis_mansion:spawn_entities/game_boy_horror_marker
execute unless entity @a[tag=looking_at_map,limit=1] unless entity @s[scores={Room=0}] rotated as @s as @e[distance=..1,tag=game_boy_horror_marker,limit=1] positioned as @s run function luigis_mansion:entities/game_boy_horror_marker/tick
execute if entity @s[scores={Room=..-1}] run function #luigis_mansion:selection_menu/game_boy_horror/map/lab_warp
execute if entity @s[scores={Room=1..}] run function luigis_mansion:selection_menu/game_boy_horror/map/display/mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute unless entity @s[scores={Room=0}] run tag @s[tag=!cancel] add looking_at_map
execute unless entity @s[scores={Room=0}] run tag @s[tag=!cancel] add stop_model
execute unless entity @s[scores={Room=0}] if entity @s[tag=!cancel] run function luigis_mansion:entities/player/animation/set/game_boy_horror
execute unless entity @s[scores={Room=0}] if entity @s[tag=!cancel] run playsound luigis_mansion:item.game_boy_horror.map.open player @a[tag=same_room] ~ ~ ~ 1
execute unless entity @s[scores={Room=0}] at @s[tag=!cancel] run playsound luigis_mansion:item.game_boy_horror.map.open player @s ~ ~ ~ 1
execute if entity @s[tag=cancel] run function luigis_mansion:selection_menu/game_boy_horror/original_menu
execute if entity @s[tag=!cancel] run data modify storage luigis_mansion:data menu_options set value {back:{id:"map/close",to:'{"type":"translatable","translate":"luigis_mansion:item.menu.original_menu"}'},options:[{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:damage":22,"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:custom_model_data":64,"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.map.zoom"}',"minecraft:custom_data":{option:{id:"reload",action:"map/zoom"}}}},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:damage":22,"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:custom_model_data":63,"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.map.move_down_floor"}',"minecraft:custom_data":{option:{id:"reload",action:"map/move_down_floor"}}}},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:damage":22,"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:custom_model_data":62,"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.map.move_up_floor"}',"minecraft:custom_data":{option:{id:"reload",action:"map/move_up_floor"}}}}]}
execute if entity @s[tag=!cancel] run function luigis_mansion:entities/player/selection_menu/load
tag @s remove opening_map
tag @s remove cancel
scoreboard players reset @s OpenMapTime
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

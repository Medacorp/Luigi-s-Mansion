tag @s remove cleared_room
tag @s remove dark_room
execute if entity @s[scores={Room=1..}] run function luigis_mansion:room/dark_room_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
tag @s[scores={Room=0}] add dark_room
execute if score #training_room LightX matches 1 run tag @s[scores={Room=-2}] add dark_room
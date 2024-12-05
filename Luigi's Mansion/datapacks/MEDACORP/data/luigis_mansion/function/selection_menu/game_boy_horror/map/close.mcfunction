attribute @s minecraft:movement_speed base reset
effect clear @s minecraft:speed
summon minecraft:marker ~ ~ ~ {Tags:["me"]}
tag @s add me
execute as @e[type=minecraft:marker,tag=me] run function luigis_mansion:selection_menu/game_boy_horror/map/return
tag @s remove me
tag @s remove looking_at_map
tag @s[tag=camera_seperated_by_game_boy_horror] remove separated_camera
tag @s remove camera_seperated_by_game_boy_horror
execute unless entity @a[tag=looking_at_map,limit=1] run tag @e[tag=map_key] add dead
tag @s add seen_room_name
title @s title ""
title @s subtitle ""
scoreboard players set @s UseItem 0
scoreboard players set @s LoadedChunks 0
scoreboard players reset @s MapZoomTime
scoreboard players reset @s OpenMapFocus
scoreboard players reset @s OpenMapTime
title @s times 40 40 40
tag @s remove loaded_chunks
execute at @s run playsound luigis_mansion:item.game_boy_horror.map.close player @a[tag=same_room] ~ ~ ~ 1
tag @s remove selection_menu_free_to_move
tag @s remove zoom_in
execute at @s run function luigis_mansion:main/update_last_position
execute unless data storage luigis_mansion:data selected_option{id:"exit"} run function luigis_mansion:selection_menu/game_boy_horror/original_menu
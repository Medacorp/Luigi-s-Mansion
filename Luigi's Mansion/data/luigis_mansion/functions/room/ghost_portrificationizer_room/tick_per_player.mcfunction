execute unless entity @s[scores={MusicType=5}] unless entity @s[scores={MusicType=22}] unless entity @s[scores={MusicType=38}] unless entity @s[scores={MusicType=40}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/ghost_portrificationizer
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.ghost_portrificationizer_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data rooms.ghost_portrificationizer_room{seen:0b} run function luigis_mansion:room/ghost_portrificationizer_room/set_seen

execute if entity @s[nbt={Inventory:[{id:"minecraft:painting"}]}] as @e[tag=e_gadd,tag=!portrificationizing,tag=!mario_to_normal,scores={Room=-3}] if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo{health:-1} run function luigis_mansion:room/ghost_portrificationizer_room/return_mario
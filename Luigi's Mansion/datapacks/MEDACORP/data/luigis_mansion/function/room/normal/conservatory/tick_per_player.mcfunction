execute if data storage luigis_mansion:data current_state.current_data.rooms.conservatory{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless entity @e[scores={Room=25},tag=play_music,tag=open] run function luigis_mansion:other/music/set/lit_room
execute if data storage luigis_mansion:data current_state.current_data.rooms.conservatory{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} if entity @e[scores={Room=25},tag=play_music,tag=open] run function luigis_mansion:other/music/set/super_mario_bros
execute unless data storage luigis_mansion:data current_state.current_data.rooms.conservatory{cleared:1b} if score #conservatory Wave matches 1..2 run function luigis_mansion:other/music/set/super_mario_bros
execute unless data storage luigis_mansion:data current_state.current_data.rooms.conservatory{cleared:1b} unless score #conservatory Wave matches 1..2 run function luigis_mansion:other/music/set/super_mario_bros
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/super_mario_bros
title @s[tag=!seen_room_name] title {"type":"translatable","translate":"luigis_mansion:location.conservatory"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.conservatory{seen:0b} unless entity @s[tag=spectator] run function luigis_mansion:room/normal/conservatory/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/normal/conservatory/wall_warp

tag @s add already_ticked

execute if entity @s[scores={Room=25,Time=0},tag=play_music,tag=open,tag=saxophone] run particle minecraft:note 658 13 -4 0 0 0 1 1 normal @a[scores={Room=25}]
execute if entity @s[scores={Room=25,Time=0},tag=play_music,tag=open,tag=harp] run particle minecraft:note 656.0 14 -6.0 0 0 0 1 1 normal @a[scores={Room=25}]
execute if entity @s[scores={Room=25,Time=0},tag=play_music,tag=open,tag=cello] run particle minecraft:note 661.0 13 -9.0 0 0 0 1 1 normal @a[scores={Room=25}]
execute if entity @s[scores={Room=25,Time=0},tag=play_music,tag=open,tag=drum_1] run particle minecraft:note 656 12 -13 0 0 0 1 1 normal @a[scores={Room=25}]
execute if entity @s[scores={Room=25,Time=0},tag=play_music,tag=open,tag=drum_2] run particle minecraft:note 657 12 -15 0 0 0 1 1 normal @a[scores={Room=25}]
execute if entity @s[scores={Room=25,Time=0},tag=play_music,tag=open,tag=drum_3] run particle minecraft:note 656 12 -17 0 0 0 1 1 normal @a[scores={Room=25}]
execute if entity @s[scores={Room=25,Time=0},tag=play_music,tag=open,tag=xylophone] run particle minecraft:note 661 12 -16 0 0 0 1 1 normal @a[scores={Room=25}]
execute as @e[scores={Room=25},tag=play_music,tag=open] unless entity @s[scores={Time=1..}] run scoreboard players set @s Time 7
scoreboard players remove @e[scores={Room=25},tag=play_music,tag=open] Time 1
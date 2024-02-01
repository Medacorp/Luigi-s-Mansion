function luigis_mansion:other/music/set/training_option
title @s[tag=!seen_room_name] title {"type":"translatable","translate":"luigis_mansion:location.training_room"}
tag @s add seen_room_name

tag @s[scores={AnimationProgress=1..},tag=!idle,tag=!animation_may_move] add spectator
scoreboard players set @s[scores={AnimationProgess=1..},tag=!idle,tag=!animation_may_move] Invulnerable 10

execute if data storage luigis_mansion:data rooms.training_room{seen:0b} unless entity @s[gamemode=spectator] run function luigis_mansion:room/training_room/set_seen

execute unless entity @s[tag=!wall_warp,gamemode=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/training_room/wall_warp

tag @s add already_ticked
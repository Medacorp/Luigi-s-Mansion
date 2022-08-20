function luigis_mansion:other/music/set/training_option
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.training_room"}
tag @s add seen_room_name

tag @s[tag=low_health_idle,tag=!idle] add spectator
scoreboard players set @s[tag=low_health_idle,tag=!idle] Invulnerable 10

execute if data storage luigis_mansion:data rooms.training_room{seen:0b} run function luigis_mansion:room/training_room/set_seen
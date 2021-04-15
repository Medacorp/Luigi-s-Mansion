execute unless entity @s[scores={MusicType=2..3}] unless entity @s[scores={MusicType=24}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/lab
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.training_room"}
tag @s add seen_room_name


execute unless entity @e[tag=e_gadd,scores={Room=-2}] run function luigis_mansion:entities/e_gadd/to_lab
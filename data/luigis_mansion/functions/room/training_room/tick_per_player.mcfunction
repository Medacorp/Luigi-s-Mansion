execute unless entity @s[scores={MusicGroup=0,MusicType=3}] unless entity @s[scores={MusicGroup=0,MusicType=11}] unless entity @s[scores={MusicGroup=0,MusicType=24}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] run function luigis_mansion:other/music/set/training_option
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.training_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data rooms.training_room{seen:0b} run function luigis_mansion:room/training_room/set_seen

execute unless entity @e[tag=e_gadd,scores={Room=-2}] run function luigis_mansion:room/underground_lab/warp_to
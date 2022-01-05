execute unless entity @s[scores={MusicGroup=0,MusicType=5}] unless entity @s[scores={MusicGroup=0,MusicType=22}] unless entity @s[scores={MusicGroup=0,MusicType=38}] unless entity @s[scores={MusicGroup=0,MusicType=40}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] unless entity @s[scores={MusicGroup=1..,MusicType=1}] run function luigis_mansion:other/music/set/ghost_portrificationizer
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.ghost_portrificationizer_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data rooms.ghost_portrificationizer_room{seen:0b} run function luigis_mansion:room/ghost_portrificationizer_room/set_seen
execute unless entity @s[scores={MusicGroup=0,MusicType=4}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] unless entity @s[scores={MusicGroup=1..,MusicType=1}] run function luigis_mansion:other/music/set/gallery
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.gallery"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data rooms.gallery{seen:0b} run function luigis_mansion:room/gallery/set_seen
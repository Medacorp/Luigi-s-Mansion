execute unless entity @s[scores={MusicType=0}] unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27}] unless entity @s[scores={MusicType=31}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/silence
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.secret_altar"}
tag @s add seen_room_name

tag @s[x=714.5,y=21,z=43.5,distance=..1.5,tag=check] add can_interact
execute if entity @s[x=714.5,y=21,z=43.5,distance=..1.5,tag=sound] run function luigis_mansion:blocks/search_sound/ceramic
execute if entity @s[x=714.5,y=21,z=43.5,distance=..1.5,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/hallway_13/search/jar_1
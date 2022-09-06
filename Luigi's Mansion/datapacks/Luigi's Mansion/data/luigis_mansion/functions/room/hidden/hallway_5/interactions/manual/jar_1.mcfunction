tag @s[x=680.5,y=12,z=25.5,distance=..1.5,tag=check] add can_interact
execute if entity @s[x=680.5,y=12,z=25.5,distance=..1.5,tag=sound] run function luigis_mansion:blocks/search_sound/ceramic
execute if entity @s[x=680.5,y=12,z=25.5,distance=..1.5,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/hallway_5/search/jar_1
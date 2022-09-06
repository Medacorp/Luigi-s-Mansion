tag @s[x=680.5,y=21,z=-18.5,distance=..1.5,tag=check] add can_interact
execute if entity @s[x=680.5,y=21,z=-18.5,distance=..1.5,tag=sound] run function luigis_mansion:blocks/search_sound/ceramic
execute if entity @s[x=680.5,y=21,z=-18.5,distance=..1.5,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/hallway_9/search/jar_3
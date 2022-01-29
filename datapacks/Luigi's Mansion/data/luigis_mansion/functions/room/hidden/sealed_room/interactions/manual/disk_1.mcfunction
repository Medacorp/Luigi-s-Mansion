tag @s[x=700.5,y=22,z=73.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=700.5,y=22,z=73.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=700.5,y=22,z=73.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/sealed_room/search/disk_1
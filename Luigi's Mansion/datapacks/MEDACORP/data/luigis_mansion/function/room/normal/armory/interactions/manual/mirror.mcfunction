tag @s[x=745.0,y=31,z=64.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=745.0,y=31,z=64.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=745.0,y=31,z=64.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #armory_mirror SearcherID = #temp ID
execute if entity @s[x=745.0,y=31,z=64.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/armory/search/boo_check/mirror
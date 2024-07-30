tag @s[x=746.0,y=30,z=70.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=746.0,y=30,z=70.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=746.0,y=30,z=70.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #armory_shield SearcherID = #temp ID
execute if entity @s[x=746.0,y=30,z=70.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/armory/search/boo_check/shield
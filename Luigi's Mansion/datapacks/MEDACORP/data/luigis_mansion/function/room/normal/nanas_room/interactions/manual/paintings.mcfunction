tag @s[x=653.0,y=22,z=-17.0,dx=0,dy=0,dz=4,tag=check] add can_interact
execute if entity @s[x=653.0,y=22,z=-17.0,dx=0,dy=0,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=653.0,y=22,z=-17.0,dx=0,dy=0,dz=4,tag=!sound,tag=!check] run scoreboard players operation #nanas_room_paintings SearcherID = #temp ID
execute if entity @s[x=653.0,y=22,z=-17.0,dx=0,dy=0,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/normal/nanas_room/search/boo_check/paintings
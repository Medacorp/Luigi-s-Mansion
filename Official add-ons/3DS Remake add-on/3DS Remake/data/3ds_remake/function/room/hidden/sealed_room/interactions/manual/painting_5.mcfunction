tag @s[x=709.0,y=22,z=-75.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=709.0,y=22,z=-75.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=709.0,y=22,z=-75.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #sealed_room_painting_5 SearcherID = #temp ID
execute if entity @s[x=709.0,y=22,z=-75.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/sealed_room/search/painting_5
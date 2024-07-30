tag @s[x=717.0,y=21,z=37.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=717.0,y=21,z=37.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=717.0,y=21,z=37.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run scoreboard players operation #parlor_painting_1 SearcherID = #temp ID
execute if entity @s[x=717.0,y=21,z=37.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/parlor/search/boo_check/painting_1
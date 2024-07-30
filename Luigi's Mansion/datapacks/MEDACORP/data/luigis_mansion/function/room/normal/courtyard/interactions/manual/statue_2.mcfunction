tag @s[x=647.0,y=102,z=-22.0,dx=2,dy=5,dz=2,tag=check] add can_interact
execute if entity @s[x=647.0,y=102,z=-22.0,dx=2,dy=5,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute if entity @s[x=647.0,y=102,z=-22.0,dx=2,dy=5,dz=2,tag=!sound,tag=!check] run scoreboard players operation #courtyard_statue_2 SearcherID = #temp ID
execute if entity @s[x=647.0,y=102,z=-22.0,dx=2,dy=5,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/courtyard/search/statue_2
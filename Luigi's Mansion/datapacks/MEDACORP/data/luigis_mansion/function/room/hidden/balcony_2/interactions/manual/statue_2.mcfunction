tag @s[x=666.0,y=120,z=23.0,dx=4,dy=6,dz=8,tag=check] add can_interact
execute if entity @s[x=666.0,y=120,z=23.0,dx=4,dy=6,dz=8,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute if entity @s[x=666.0,y=120,z=23.0,dx=4,dy=6,dz=8,tag=!sound,tag=!check] run scoreboard players operation #balcony_2_statue_2 SearcherID = #temp ID
execute if entity @s[x=666.0,y=120,z=23.0,dx=4,dy=6,dz=8,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/balcony_2/search/statue_2
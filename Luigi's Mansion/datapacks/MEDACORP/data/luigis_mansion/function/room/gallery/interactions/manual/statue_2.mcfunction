tag @s[x=770.0,y=77,z=-35.0,dx=3,dy=6,dz=4,tag=check] add can_interact
execute if entity @s[x=770.0,y=77,z=-35.0,dx=3,dy=6,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute if entity @s[x=770.0,y=77,z=-35.0,dx=3,dy=6,dz=4,tag=!sound,tag=!check] run scoreboard players operation #gallery_statue_2 SearcherID = #temp ID
execute if entity @s[x=770.0,y=77,z=-35.0,dx=3,dy=6,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/gallery/search/statue_2
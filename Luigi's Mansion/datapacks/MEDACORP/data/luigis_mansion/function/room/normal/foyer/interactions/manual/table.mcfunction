tag @s[x=746.0,y=11,z=12.0,dx=0,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=746.0,y=11,z=12.0,dx=0,dy=1,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=746.0,y=11,z=12.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run scoreboard players operation #foyer_table SearcherID = #temp ID
execute if entity @s[x=746.0,y=11,z=12.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/foyer/search/table
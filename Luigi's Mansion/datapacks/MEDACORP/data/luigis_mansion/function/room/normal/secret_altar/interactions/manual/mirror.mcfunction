tag @s[x=647.0,y=93,z=-26.0,dx=2,dy=3,dz=0,tag=check] add can_interact
execute if entity @s[x=647.0,y=93,z=-26.0,dx=2,dy=3,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=647.0,y=93,z=-26.0,dx=2,dy=3,dz=0,tag=!sound,tag=!check] run scoreboard players operation #secret_altar_mirror SearcherID = #temp ID
execute if entity @s[x=647.0,y=93,z=-26.0,dx=2,dy=3,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/secret_altar/search/mirror
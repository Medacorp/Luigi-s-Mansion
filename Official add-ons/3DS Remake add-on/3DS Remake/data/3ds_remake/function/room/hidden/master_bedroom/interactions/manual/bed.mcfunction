tag @s[x=689.0,y=111,z=51.0,dx=3,dy=1,dz=4,tag=check] add can_interact
execute if entity @s[x=689.0,y=111,z=51.0,dx=3,dy=1,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=689.0,y=111,z=51.0,dx=3,dy=1,dz=4,tag=!sound,tag=!check] run scoreboard players operation #master_bedroom_bed SearcherID = #temp ID
execute if entity @s[x=689.0,y=111,z=51.0,dx=3,dy=1,dz=4,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/master_bedroom/search/boo_check/bed
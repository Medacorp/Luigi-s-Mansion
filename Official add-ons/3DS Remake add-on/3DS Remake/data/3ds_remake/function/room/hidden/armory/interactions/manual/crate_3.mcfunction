tag @s[x=752.0,y=29,z=75.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=752.0,y=29,z=75.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=752.0,y=29,z=75.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #armory_crate_3 SearcherID = #temp ID
execute if entity @s[x=752.0,y=29,z=75.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/armory/search/boo_check/crate_3
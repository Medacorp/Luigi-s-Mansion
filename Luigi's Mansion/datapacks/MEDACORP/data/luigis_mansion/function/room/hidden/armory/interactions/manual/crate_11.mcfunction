tag @s[x=748.0,y=29,z=-46.0,dx=1,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=748.0,y=29,z=-46.0,dx=1,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=748.0,y=29,z=-46.0,dx=1,dy=0,dz=1,tag=!sound,tag=!check] run scoreboard players operation #armory_crate_11 SearcherID = #temp ID
execute if entity @s[x=748.0,y=29,z=-46.0,dx=1,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/armory/search/boo_check/crate_11
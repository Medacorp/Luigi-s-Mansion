tag @s[x=662.0,y=20,z=-22.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=662.0,y=20,z=-22.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_metal
execute if entity @s[x=662.0,y=20,z=-22.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #washroom_2_radiator SearcherID = #temp ID
execute if entity @s[x=662.0,y=20,z=-22.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/washroom_2/search/boo_check/radiator
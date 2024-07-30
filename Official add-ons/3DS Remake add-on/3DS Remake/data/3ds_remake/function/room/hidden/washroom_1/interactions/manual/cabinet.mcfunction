tag @s[x=662.0,y=13,z=36.0,dx=1,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=662.0,y=13,z=36.0,dx=1,dy=2,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=662.0,y=13,z=36.0,dx=1,dy=2,dz=2,tag=!sound,tag=!check] run scoreboard players operation #washroom_1_cabinet SearcherID = #temp ID
execute if entity @s[x=662.0,y=13,z=36.0,dx=1,dy=2,dz=2,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/washroom_1/search/boo_check/cabinet
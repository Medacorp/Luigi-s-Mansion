tag @s[x=737.0,y=2,z=-45.0,dx=1,dy=2,dz=1,tag=check] add can_interact
execute if entity @s[x=737.0,y=2,z=-45.0,dx=1,dy=2,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=737.0,y=2,z=-45.0,dx=1,dy=2,dz=1,tag=!sound,tag=!check] run scoreboard players operation #cellar_box_1 SearcherID = #temp ID
execute if entity @s[x=737.0,y=2,z=-45.0,dx=1,dy=2,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/cellar/search/boo_check/box_1
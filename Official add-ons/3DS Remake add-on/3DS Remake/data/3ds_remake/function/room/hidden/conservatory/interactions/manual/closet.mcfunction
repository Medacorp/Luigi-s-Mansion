tag @s[x=654.0,y=11,z=-27.0,dx=1,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=654.0,y=11,z=-27.0,dx=1,dy=2,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=654.0,y=11,z=-27.0,dx=1,dy=2,dz=2,tag=!sound,tag=!check] run scoreboard players operation #conservatory_closet SearcherID = #temp ID
execute if entity @s[x=654.0,y=11,z=-27.0,dx=1,dy=2,dz=2,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/conservatory/search/boo_check/closet
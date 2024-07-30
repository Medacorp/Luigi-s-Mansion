tag @s[x=657.0,y=11,z=-15.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=657.0,y=11,z=-15.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/drum
execute if entity @s[x=657.0,y=11,z=-15.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run scoreboard players operation #conservatory_drum_2 SearcherID = #temp ID
execute if entity @s[x=657.0,y=11,z=-15.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/conservatory/search/boo_check/drum_2
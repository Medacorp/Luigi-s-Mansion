tag @s[x=716.0,y=22,z=52.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=716.0,y=22,z=52.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=716.0,y=22,z=52.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #study_painting_3 SearcherID = #temp ID
execute if entity @s[x=716.0,y=22,z=52.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/study/search/boo_check/painting_3
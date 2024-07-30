tag @s[x=708.0,y=22,z=-28.0,dx=1,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=708.0,y=22,z=-28.0,dx=1,dy=0,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=708.0,y=22,z=-28.0,dx=1,dy=0,dz=0,tag=!sound,tag=!check] run scoreboard players operation #study_painting_4 SearcherID = #temp ID
execute if entity @s[x=708.0,y=22,z=-28.0,dx=1,dy=0,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/study/search/boo_check/painting_4
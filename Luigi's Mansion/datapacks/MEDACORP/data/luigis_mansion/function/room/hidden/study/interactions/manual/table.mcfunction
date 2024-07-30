tag @s[x=707.0,y=20,z=-35.0,dx=1,dy=0,dz=3,tag=check] add can_interact
execute if entity @s[x=707.0,y=20,z=-35.0,dx=1,dy=0,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=707.0,y=20,z=-35.0,dx=1,dy=0,dz=3,tag=!sound,tag=!check] run scoreboard players operation #study_table SearcherID = #temp ID
execute if entity @s[x=707.0,y=20,z=-35.0,dx=1,dy=0,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/study/search/boo_check/table
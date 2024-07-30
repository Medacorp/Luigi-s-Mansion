tag @s[x=707.0,y=20,z=47.0,dx=1,dy=0,dz=3,tag=check] add can_interact
execute if entity @s[x=707.0,y=20,z=47.0,dx=1,dy=0,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=707.0,y=20,z=47.0,dx=1,dy=0,dz=3,tag=!sound,tag=!check] run scoreboard players operation #study_table_2 SearcherID = #temp ID
execute if entity @s[x=707.0,y=20,z=47.0,dx=1,dy=0,dz=3,tag=!sound,tag=!check] run function e3_demo:room/original/study/search/table_2
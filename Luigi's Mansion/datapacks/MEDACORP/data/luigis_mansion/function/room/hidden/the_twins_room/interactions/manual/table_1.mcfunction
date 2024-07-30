tag @s[x=738.0,y=20,z=-33.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=738.0,y=20,z=-33.0,dx=0,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=738.0,y=20,z=-33.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run scoreboard players operation #the_twins_room_table_1 SearcherID = #temp ID
execute if entity @s[x=738.0,y=20,z=-33.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/the_twins_room/search/boo_check/table_1
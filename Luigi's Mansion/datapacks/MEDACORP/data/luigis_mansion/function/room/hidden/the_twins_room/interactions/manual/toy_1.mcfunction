tag @s[x=745.0,y=21,z=-16.0,dx=1,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=745.0,y=21,z=-16.0,dx=1,dy=0,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=745.0,y=21,z=-16.0,dx=1,dy=0,dz=0,tag=!sound,tag=!check] run scoreboard players operation #the_twins_room_toy_1 SearcherID = #temp ID
execute if entity @s[x=745.0,y=21,z=-16.0,dx=1,dy=0,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/the_twins_room/search/boo_check/toy_1
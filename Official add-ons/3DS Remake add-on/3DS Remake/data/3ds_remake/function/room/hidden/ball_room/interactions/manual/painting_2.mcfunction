tag @s[x=696.0,y=12,z=-50.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=696.0,y=12,z=-50.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=696.0,y=12,z=-50.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run scoreboard players operation #ball_room_painting_2 SearcherID = #temp ID
execute if entity @s[x=696.0,y=12,z=-50.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/ball_room/search/boo_check/painting_2
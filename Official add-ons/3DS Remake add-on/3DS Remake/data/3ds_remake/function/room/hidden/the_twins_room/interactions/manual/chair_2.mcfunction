tag @s[x=746.5,y=20,z=45.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=746.5,y=20,z=45.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=746.5,y=20,z=45.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #the_twins_room_chair_2 SearcherID = #temp ID
execute if entity @s[x=746.5,y=20,z=45.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/the_twins_room/search/boo_check/chair_2
tag @s[x=643.0,y=11,z=-60.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=643.0,y=11,z=-60.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=643.0,y=11,z=-60.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #rec_room_bike_2 SearcherID = #temp ID
execute if entity @s[x=643.0,y=11,z=-60.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/rec_room/search/boo_check/bike_2
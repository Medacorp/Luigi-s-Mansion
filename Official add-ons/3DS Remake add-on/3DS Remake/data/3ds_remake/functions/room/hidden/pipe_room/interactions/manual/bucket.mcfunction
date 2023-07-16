tag @s[x=698.5,y=2,z=-3.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=698.5,y=2,z=-3.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=698.5,y=2,z=-3.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/pipe_room/search/boo_check/bucket
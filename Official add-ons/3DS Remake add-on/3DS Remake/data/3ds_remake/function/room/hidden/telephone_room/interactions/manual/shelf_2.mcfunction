tag @s[x=738.0,y=31,z=22.0,dx=0,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=738.0,y=31,z=22.0,dx=0,dy=1,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=738.0,y=31,z=22.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run scoreboard players operation #telephone_room_shelf_2 SearcherID = #temp ID
execute if entity @s[x=738.0,y=31,z=22.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/telephone_room/search/boo_check/shelf_2
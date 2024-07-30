tag @s[x=714.0,y=11,z=-47.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=714.0,y=11,z=-47.0,dx=0,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=714.0,y=11,z=-47.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run scoreboard players operation #laundry_room_broom SearcherID = #temp ID
execute if entity @s[x=714.0,y=11,z=-47.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/laundry_room/search/boo_check/broom
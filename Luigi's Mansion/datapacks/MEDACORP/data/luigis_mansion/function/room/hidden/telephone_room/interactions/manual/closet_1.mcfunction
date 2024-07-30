tag @s[x=738.0,y=29,z=-16.0,dx=1,dy=3,dz=3,tag=check] add can_interact
execute if entity @s[x=738.0,y=29,z=-16.0,dx=1,dy=3,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=738.0,y=29,z=-16.0,dx=1,dy=3,dz=3,tag=!sound,tag=!check] run scoreboard players operation #telephone_room_closet_1 SearcherID = #temp ID
execute if entity @s[x=738.0,y=29,z=-16.0,dx=1,dy=3,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/telephone_room/search/boo_check/closet_1
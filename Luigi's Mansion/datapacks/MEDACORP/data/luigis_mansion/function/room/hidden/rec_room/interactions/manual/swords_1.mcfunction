tag @s[x=640.0,y=13,z=46.0,dx=2,dy=2,dz=0,tag=check] add can_interact
execute if entity @s[x=640.0,y=13,z=46.0,dx=2,dy=2,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=640.0,y=13,z=46.0,dx=2,dy=2,dz=0,tag=!sound,tag=!check] run scoreboard players operation #rec_room_swords_1 SearcherID = #temp ID
execute if entity @s[x=640.0,y=13,z=46.0,dx=2,dy=2,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/rec_room/search/boo_check/swords_1
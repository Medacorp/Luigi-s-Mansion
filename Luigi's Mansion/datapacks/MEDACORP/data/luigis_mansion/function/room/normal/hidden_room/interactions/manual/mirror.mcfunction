tag @s[x=749.0,y=11,z=38.0,dx=0,dy=3,dz=3,tag=check] add can_interact
execute if entity @s[x=749.0,y=11,z=38.0,dx=0,dy=3,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=749.0,y=11,z=38.0,dx=0,dy=3,dz=3,tag=!sound,tag=!check] run scoreboard players operation #hidden_room_mirror SearcherID = #temp ID
execute if entity @s[x=749.0,y=11,z=38.0,dx=0,dy=3,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/normal/hidden_room/search/boo_check/mirror
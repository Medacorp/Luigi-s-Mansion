tag @s[x=749.0,y=11,z=60.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=749.0,y=11,z=60.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=749.0,y=11,z=60.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #butlers_room_sewing_machine SearcherID = #temp ID
execute if entity @s[x=749.0,y=11,z=60.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/butlers_room/search/boo_check/sewing_machine
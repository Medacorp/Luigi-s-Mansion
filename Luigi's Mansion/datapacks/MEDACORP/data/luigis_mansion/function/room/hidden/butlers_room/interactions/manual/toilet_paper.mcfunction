tag @s[x=744.0,y=11,z=-41.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=744.0,y=11,z=-41.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=744.0,y=11,z=-41.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #butlers_room_toilet_paper SearcherID = #temp ID
execute if entity @s[x=744.0,y=11,z=-41.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/butlers_room/search/boo_check/toilet_paper
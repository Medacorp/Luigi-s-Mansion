tag @s[x=744.0,y=11,z=-34.0,dx=0,dy=4,dz=0,tag=check] add can_interact
execute if entity @s[x=744.0,y=11,z=-34.0,dx=0,dy=4,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=744.0,y=11,z=-34.0,dx=0,dy=4,dz=0,tag=!sound,tag=!check] run scoreboard players operation #fortune_tellers_room_pillar_2 SearcherID = #temp ID
execute if entity @s[x=744.0,y=11,z=-34.0,dx=0,dy=4,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/fortune_tellers_room/search/boo_check/pillar_2
tag @s[x=736.0,y=11,z=-37.0,dx=0,dy=2,dz=1,tag=check] add can_interact
execute if entity @s[x=736.0,y=11,z=-37.0,dx=0,dy=2,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=736.0,y=11,z=-37.0,dx=0,dy=2,dz=1,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/fortune_tellers_room/search/boo_check/table_3
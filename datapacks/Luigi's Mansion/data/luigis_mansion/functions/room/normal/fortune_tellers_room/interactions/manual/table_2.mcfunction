tag @s[x=741.0,y=11,z=-31.0,dx=1,dy=0,dz=4,tag=check] add can_interact
execute if entity @s[x=741.0,y=11,z=-31.0,dx=1,dy=0,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=741.0,y=11,z=-31.0,dx=1,dy=0,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/normal/fortune_tellers_room/search/boo_check/table_2
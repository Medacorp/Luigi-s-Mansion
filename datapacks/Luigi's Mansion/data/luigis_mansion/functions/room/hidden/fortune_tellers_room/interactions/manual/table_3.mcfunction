tag @s[x=736.0,y=11,z=51.0,dx=0,dy=2,dz=1,tag=check] add can_interact
execute if entity @s[x=736.0,y=11,z=51.0,dx=0,dy=2,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=736.0,y=11,z=51.0,dx=0,dy=2,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/fortune_tellers_room/search/table_3
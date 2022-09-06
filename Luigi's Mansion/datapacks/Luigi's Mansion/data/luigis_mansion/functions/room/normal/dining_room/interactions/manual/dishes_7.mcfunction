tag @s[x=703.0,y=12,z=34.0,dx=1,dy=0,dz=2,tag=check] add can_interact
execute if entity @s[x=703.0,y=12,z=34.0,dx=1,dy=0,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=703.0,y=12,z=34.0,dx=1,dy=0,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/dining_room/search/boo_check/dishes_7
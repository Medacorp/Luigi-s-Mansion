tag @s[x=747.0,y=29,z=56.0,dx=2,dy=3,dz=1,tag=check] add can_interact
execute if entity @s[x=747.0,y=29,z=56.0,dx=2,dy=3,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=747.0,y=29,z=56.0,dx=2,dy=3,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/armory/search/boo_check/armor_7
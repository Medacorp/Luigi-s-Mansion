tag @s[x=758.0,y=29,z=66.0,dx=2,dy=3,dz=2,tag=check] add can_interact
execute if entity @s[x=758.0,y=29,z=66.0,dx=2,dy=3,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=758.0,y=29,z=66.0,dx=2,dy=3,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/armory/search/boo_check/armor_3
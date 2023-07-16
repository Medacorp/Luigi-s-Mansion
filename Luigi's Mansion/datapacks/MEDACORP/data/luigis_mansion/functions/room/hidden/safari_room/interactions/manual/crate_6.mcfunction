tag @s[x=736.0,y=29,z=70.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=736.0,y=29,z=70.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=736.0,y=29,z=70.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/safari_room/search/boo_check/crate_6
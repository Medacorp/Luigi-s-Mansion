tag @s[x=699.0,y=11,z=-41.0,dx=0,dy=3,dz=0,tag=check] add can_interact
execute if entity @s[x=699.0,y=11,z=-41.0,dx=0,dy=3,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=699.0,y=11,z=-41.0,dx=0,dy=3,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/dining_room/search/boo_check/torch_1
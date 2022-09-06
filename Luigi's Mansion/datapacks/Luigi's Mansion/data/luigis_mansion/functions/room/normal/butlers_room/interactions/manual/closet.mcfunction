tag @s[x=739.0,y=11,z=64.0,dx=1,dy=3,dz=4,tag=check] add can_interact
execute if entity @s[x=739.0,y=11,z=64.0,dx=1,dy=3,dz=4,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=739.0,y=11,z=64.0,dx=1,dy=3,dz=4,tag=!sound,tag=!check] run function luigis_mansion:room/normal/butlers_room/search/boo_check/closet
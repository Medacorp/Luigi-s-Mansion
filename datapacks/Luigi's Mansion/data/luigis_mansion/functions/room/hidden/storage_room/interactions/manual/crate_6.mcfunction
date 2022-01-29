tag @s[x=681.0,y=12,z=81.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=681.0,y=12,z=81.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=681.0,y=12,z=81.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/storage_room/search/crate_6
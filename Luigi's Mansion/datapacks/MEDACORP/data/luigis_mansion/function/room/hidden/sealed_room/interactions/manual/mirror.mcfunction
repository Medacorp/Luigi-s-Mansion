tag @s[x=694.0,y=23,z=97.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=694.0,y=23,z=97.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=694.0,y=23,z=97.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/sealed_room/search/mirror
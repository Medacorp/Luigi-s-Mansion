tag @s[x=741.0,y=20,z=-54.0,dx=1,dy=1,dz=3,tag=check] add can_interact
execute if entity @s[x=741.0,y=20,z=-54.0,dx=1,dy=1,dz=3,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=741.0,y=20,z=-54.0,dx=1,dy=1,dz=3,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/nursery/search/crib
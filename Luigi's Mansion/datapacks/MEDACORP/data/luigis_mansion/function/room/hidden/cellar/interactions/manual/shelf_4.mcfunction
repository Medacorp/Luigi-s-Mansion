tag @s[x=741.0,y=2,z=76.0,dx=4,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=741.0,y=2,z=76.0,dx=4,dy=1,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=741.0,y=2,z=76.0,dx=4,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/cellar/search/boo_check/shelf_4
tag @s[x=704.0,y=20,z=76.0,dx=1,dy=0,dz=13,tag=check] add can_interact
execute if entity @s[x=704.0,y=20,z=76.0,dx=1,dy=0,dz=13,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=704.0,y=20,z=76.0,dx=1,dy=0,dz=13,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/sealed_room/search/table
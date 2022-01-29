tag @s[x=650.0,y=20,z=-11.0,dx=2,dy=1,dz=5,tag=check] add can_interact
execute if entity @s[x=650.0,y=20,z=-11.0,dx=2,dy=1,dz=5,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute if entity @s[x=650.0,y=20,z=-11.0,dx=2,dy=1,dz=5,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/bathroom_2/search/bathtub
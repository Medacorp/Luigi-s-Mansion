tag @s[x=656.0,y=15,z=-12.0,dx=2,dy=0,dz=0,tag=check] add can_interact
execute if entity @s[x=656.0,y=15,z=-12.0,dx=2,dy=0,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=656.0,y=15,z=-12.0,dx=2,dy=0,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/bathroom_1/search/boo_check/shelf
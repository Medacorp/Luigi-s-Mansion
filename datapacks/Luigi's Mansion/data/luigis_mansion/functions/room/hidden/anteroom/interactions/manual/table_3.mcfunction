tag @s[x=685.0,y=20,z=-10.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=685.0,y=20,z=-10.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=685.0,y=20,z=-10.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/anteroom/search/table_3
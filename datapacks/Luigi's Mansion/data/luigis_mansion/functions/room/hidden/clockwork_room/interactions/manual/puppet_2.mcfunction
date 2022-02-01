tag @s[x=688.0,y=122,z=22.0,dx=1,dy=2,dz=1,tag=check] add can_interact
execute if entity @s[x=688.0,y=122,z=22.0,dx=1,dy=2,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=688.0,y=122,z=22.0,dx=1,dy=2,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/clockwork_room/search/puppet_2
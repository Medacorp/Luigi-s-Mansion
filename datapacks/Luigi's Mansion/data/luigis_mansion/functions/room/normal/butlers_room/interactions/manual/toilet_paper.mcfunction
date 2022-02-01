tag @s[x=744.0,y=11,z=55.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=744.0,y=11,z=55.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=744.0,y=11,z=55.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/butlers_room/search/toilet_paper
tag @s[x=644.0,y=13,z=-31.0,dx=2,dy=2,dz=0,tag=check] add can_interact
execute if entity @s[x=644.0,y=13,z=-31.0,dx=2,dy=2,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=644.0,y=13,z=-31.0,dx=2,dy=2,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/rec_room/search/boo_check/sword_2
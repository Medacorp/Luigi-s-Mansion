tag @s[x=640.0,y=22,z=-31.0,dx=6,dy=2,dz=0,tag=check] add can_interact
execute if entity @s[x=640.0,y=22,z=-31.0,dx=6,dy=2,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=640.0,y=22,z=-31.0,dx=6,dy=2,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/normal/tea_room/search/chelf_1
tag @s[x=640.0,y=22,z=46.0,dx=6,dy=2,dz=0,tag=check] add can_interact
execute if entity @s[x=640.0,y=22,z=46.0,dx=6,dy=2,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/ceramic
execute if entity @s[x=640.0,y=22,z=46.0,dx=6,dy=2,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/tea_room/search/boo_check/chelf_1
tag @s[x=702.0,y=20,z=-29.0,dx=0,dy=6,dz=0,tag=check] add can_interact
execute if entity @s[x=702.0,y=20,z=-29.0,dx=0,dy=6,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=702.0,y=20,z=-29.0,dx=0,dy=6,dz=0,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/study/search/bookshelf_6
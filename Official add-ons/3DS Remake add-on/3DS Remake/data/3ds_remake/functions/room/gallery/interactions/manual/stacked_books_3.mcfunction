tag @s[x=775.0,y=2,z=-36.0,dx=0,dy=5,dz=1,tag=check] add can_interact
execute if entity @s[x=775.0,y=2,z=-36.0,dx=0,dy=5,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=775.0,y=2,z=-36.0,dx=0,dy=5,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/gallery/search/stacked_books_3
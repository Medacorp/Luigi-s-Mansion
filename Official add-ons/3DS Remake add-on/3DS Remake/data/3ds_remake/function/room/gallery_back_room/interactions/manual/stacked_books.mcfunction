tag @s[x=740.0,y=2,z=-34.0,dx=1,dy=3,dz=0,tag=check] add can_interact
execute if entity @s[x=740.0,y=2,z=-34.0,dx=1,dy=3,dz=0,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=740.0,y=2,z=-34.0,dx=1,dy=3,dz=0,tag=!sound,tag=!check] run scoreboard players operation #gallery_back_room_stacked_books SearcherID = #temp ID
execute if entity @s[x=740.0,y=2,z=-34.0,dx=1,dy=3,dz=0,tag=!sound,tag=!check] run function 3ds_remake:room/gallery_back_room/search/stacked_books
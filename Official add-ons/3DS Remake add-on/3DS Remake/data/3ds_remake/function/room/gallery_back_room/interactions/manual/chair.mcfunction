tag @s[x=737.5,y=2,z=-32.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=737.5,y=2,z=-32.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=737.5,y=2,z=-32.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #gallery_back_room_chair SearcherID = #temp ID
execute if entity @s[x=737.5,y=2,z=-32.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/gallery_back_room/search/chair
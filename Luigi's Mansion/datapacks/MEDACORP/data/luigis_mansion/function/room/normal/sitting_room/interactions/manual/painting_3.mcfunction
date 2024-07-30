tag @s[x=747.5,y=23,z=-25.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=747.5,y=23,z=-25.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=747.5,y=23,z=-25.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #sitting_room_painting_3 SearcherID = #temp ID
execute if entity @s[x=747.5,y=23,z=-25.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/sitting_room/search/boo_check/painting_3
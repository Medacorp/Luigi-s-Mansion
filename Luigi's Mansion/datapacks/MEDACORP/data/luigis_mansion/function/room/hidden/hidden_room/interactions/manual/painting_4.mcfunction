tag @s[x=737.5,y=14,z=-21.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=737.5,y=14,z=-21.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=737.5,y=14,z=-21.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #hidden_room_painting_4 SearcherID = #temp ID
execute if entity @s[x=737.5,y=14,z=-21.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/hidden_room/search/boo_check/painting_4
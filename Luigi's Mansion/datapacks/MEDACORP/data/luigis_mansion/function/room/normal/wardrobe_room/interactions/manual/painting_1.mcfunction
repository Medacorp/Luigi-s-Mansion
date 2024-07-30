tag @s[x=687.5,y=22,z=63.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=687.5,y=22,z=63.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=687.5,y=22,z=63.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #wardrobe_room_painting_1 SearcherID = #temp ID
execute if entity @s[x=687.5,y=22,z=63.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/wardrobe_room/search/boo_check/painting_1
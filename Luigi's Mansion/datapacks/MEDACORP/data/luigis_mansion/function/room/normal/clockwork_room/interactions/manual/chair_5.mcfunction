tag @s[x=692.5,y=120,z=-2.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=692.5,y=120,z=-2.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=692.5,y=120,z=-2.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #clockwork_room_chair_5 SearcherID = #temp ID
execute if entity @s[x=692.5,y=120,z=-2.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/clockwork_room/search/boo_check/chair_5
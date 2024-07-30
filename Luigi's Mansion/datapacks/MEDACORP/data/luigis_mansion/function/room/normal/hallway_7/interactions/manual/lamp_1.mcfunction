tag @s[x=716.5,y=5,z=-43.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=716.5,y=5,z=-43.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=716.5,y=5,z=-43.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #hallway_7_lamp_1 SearcherID = #temp ID
execute if entity @s[x=716.5,y=5,z=-43.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/hallway_7/search/lamp_1
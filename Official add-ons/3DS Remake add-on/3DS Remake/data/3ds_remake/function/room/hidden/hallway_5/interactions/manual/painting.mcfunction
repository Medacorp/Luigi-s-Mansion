tag @s[x=679.5,y=14,z=-18.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=679.5,y=14,z=-18.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=679.5,y=14,z=-18.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #hallway_5_painting SearcherID = #temp ID
execute if entity @s[x=679.5,y=14,z=-18.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/hallway_5/search/painting
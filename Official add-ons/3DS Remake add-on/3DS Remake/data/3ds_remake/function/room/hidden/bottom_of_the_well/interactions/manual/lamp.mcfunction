tag @s[x=649.5,y=93,z=-1.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=649.5,y=93,z=-1.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=649.5,y=93,z=-1.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #bottom_of_the_well_lamp SearcherID = #temp ID
execute if entity @s[x=649.5,y=93,z=-1.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/bottom_of_the_well/search/lamp
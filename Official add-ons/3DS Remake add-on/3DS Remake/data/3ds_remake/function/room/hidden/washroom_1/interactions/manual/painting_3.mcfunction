tag @s[x=667.5,y=13,z=40.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=667.5,y=13,z=40.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=667.5,y=13,z=40.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #washroom_1_painting_3 SearcherID = #temp ID
execute if entity @s[x=667.5,y=13,z=40.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/washroom_1/search/boo_check/painting_3
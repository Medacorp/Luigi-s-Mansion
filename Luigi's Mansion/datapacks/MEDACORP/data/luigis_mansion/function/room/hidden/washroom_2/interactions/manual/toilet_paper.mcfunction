tag @s[x=661.5,y=21,z=-28.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=661.5,y=21,z=-28.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=661.5,y=21,z=-28.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #washroom_2_toilet_paper SearcherID = #temp ID
execute if entity @s[x=661.5,y=21,z=-28.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/washroom_2/search/boo_check/toilet_paper
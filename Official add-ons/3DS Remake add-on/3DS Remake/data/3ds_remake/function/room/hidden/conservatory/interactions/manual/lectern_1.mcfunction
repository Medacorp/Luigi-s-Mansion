tag @s[x=656.5,y=11,z=-8.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=656.5,y=11,z=-8.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=656.5,y=11,z=-8.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #conservatory_lectern_1 SearcherID = #temp ID
execute if entity @s[x=656.5,y=11,z=-8.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/conservatory/search/boo_check/lectern_1
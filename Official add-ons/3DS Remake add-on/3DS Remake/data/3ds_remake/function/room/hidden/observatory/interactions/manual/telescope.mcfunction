tag @s[x=643.5,y=21,z=-80.5,distance=..1.5,tag=check] add can_interact
execute if entity @s[x=643.5,y=21,z=-80.5,distance=..1.5,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute if entity @s[x=643.5,y=21,z=-80.5,distance=..1.5,tag=!sound,tag=!check] run scoreboard players operation #observatory_telescope SearcherID = #temp ID
execute if entity @s[x=643.5,y=21,z=-80.5,distance=..1.5,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/observatory/search/telescope
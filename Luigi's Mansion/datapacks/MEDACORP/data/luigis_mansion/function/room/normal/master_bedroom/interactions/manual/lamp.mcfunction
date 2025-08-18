tag @s[x=695.5,y=112,z=55.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=695.5,y=112,z=55.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=695.5,y=112,z=55.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #master_bedroom_chair SearcherID = #temp ID
execute if entity @s[x=695.5,y=112,z=55.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/master_bedroom/search/lamp
tag @s[x=710.5,y=29,z=74.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=710.5,y=29,z=74.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=710.5,y=29,z=74.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #ceramics_studio_box_3 SearcherID = #temp ID
execute if entity @s[x=710.5,y=29,z=74.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/ceramics_studio/search/boo_check/box_3
tag @s[x=740.5,y=29,z=71.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=740.5,y=29,z=71.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=740.5,y=29,z=71.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #safari_room_chair SearcherID = #temp ID
execute if entity @s[x=740.5,y=29,z=71.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/safari_room/search/boo_check/chair
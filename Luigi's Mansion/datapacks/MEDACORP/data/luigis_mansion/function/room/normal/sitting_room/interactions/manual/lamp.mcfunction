tag @s[x=741.5,y=26,z=-28.5,distance=..1,tag=check] add can_interact
execute if entity @s[x=741.5,y=26,z=-28.5,distance=..1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=741.5,y=26,z=-28.5,distance=..1,tag=!sound,tag=!check] run scoreboard players operation #sitting_room_lamp SearcherID = #temp ID
execute if entity @s[x=741.5,y=26,z=-28.5,distance=..1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/sitting_room/search/lamp
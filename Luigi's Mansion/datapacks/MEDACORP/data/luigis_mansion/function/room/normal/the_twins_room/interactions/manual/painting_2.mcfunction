tag @s[x=741.5,y=21,z=49.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=741.5,y=21,z=49.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=741.5,y=21,z=49.5,distance=..0.7,tag=!sound,tag=!check] run scoreboard players operation #the_twins_room_painting_2 SearcherID = #temp ID
execute if entity @s[x=741.5,y=21,z=49.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/the_twins_room/search/boo_check/painting_2
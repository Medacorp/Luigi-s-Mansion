tag @s[x=679.5,y=14,z=-18.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=679.5,y=14,z=-18.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=679.5,y=14,z=-18.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/hallway_5/search/painting
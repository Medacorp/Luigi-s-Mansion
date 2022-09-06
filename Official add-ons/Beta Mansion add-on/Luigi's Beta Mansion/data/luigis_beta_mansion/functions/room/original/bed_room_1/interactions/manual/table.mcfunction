tag @s[x=685.5,y=111,z=47.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=685.5,y=111,z=47.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=685.5,y=111,z=47.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/bed_room_1/search/table
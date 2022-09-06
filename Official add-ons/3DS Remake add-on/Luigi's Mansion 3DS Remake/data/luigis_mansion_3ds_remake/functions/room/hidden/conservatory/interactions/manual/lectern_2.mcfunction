tag @s[x=660.5,y=11,z=-17.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=660.5,y=11,z=-17.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=660.5,y=11,z=-17.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion_3ds_remake:room/hidden/conservatory/search/boo_check/lectern_2
tag @s[x=695.5,y=111,z=-39.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=695.5,y=111,z=-39.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=695.5,y=111,z=-39.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/master_bedroom/search/boo_check/table_1
tag @s[x=683.5,y=11,z=-72.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=683.5,y=11,z=-72.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=683.5,y=11,z=-72.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/billiards_room/search/boo_check/table_2
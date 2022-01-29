tag @s[x=727.5,y=21,z=-3.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=727.5,y=21,z=-3.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=727.5,y=21,z=-3.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/parlor/search/table_4
tag @s[x=727.5,y=21,z=19.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=727.5,y=21,z=19.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/wood
execute if entity @s[x=727.5,y=21,z=19.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/parlor/search/boo_check/table_4
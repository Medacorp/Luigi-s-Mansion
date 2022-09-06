tag @s[x=643.5,y=21,z=63.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=643.5,y=21,z=63.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=643.5,y=21,z=63.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/tea_room/search/boo_check/ice_bucket
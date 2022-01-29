tag @s[x=716.5,y=5,z=59.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=716.5,y=5,z=59.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/metal
execute if entity @s[x=716.5,y=5,z=59.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/hallway_7/search/lamp_1
tag @s[x=643.5,y=21,z=-51.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=643.5,y=21,z=-51.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=643.5,y=21,z=-51.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/tea_room/search/tea_box
tag @s[x=737.5,y=21,z=15.5,distance=..1.5,tag=check] add can_interact
execute if entity @s[x=737.5,y=21,z=15.5,distance=..1.5,tag=sound] run function luigis_mansion:blocks/search_sound/ceramic
execute if entity @s[x=737.5,y=21,z=15.5,distance=..1.5,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/hallway_1/search/jar_1
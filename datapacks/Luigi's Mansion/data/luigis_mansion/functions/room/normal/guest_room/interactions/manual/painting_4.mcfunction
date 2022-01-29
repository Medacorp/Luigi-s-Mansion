tag @s[x=735.5,y=23,z=-56.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=735.5,y=23,z=-56.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=735.5,y=23,z=-56.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/guest_room/search/painting_4_flipped
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=735.5,y=23,z=-56.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/guest_room/search/painting_4
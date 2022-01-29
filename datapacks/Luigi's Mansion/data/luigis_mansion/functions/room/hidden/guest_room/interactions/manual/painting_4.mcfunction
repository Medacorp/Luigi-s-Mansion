tag @s[x=735.5,y=23,z=72.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=735.5,y=23,z=72.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if block 742 21 67 minecraft:redstone_lamp if entity @s[x=735.5,y=23,z=72.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/guest_room/search/painting_4_flipped
execute unless block 742 21 67 minecraft:redstone_lamp if entity @s[x=735.5,y=23,z=72.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/guest_room/search/painting_4
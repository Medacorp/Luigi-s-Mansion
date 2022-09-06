execute if block 742 21 -52 minecraft:redstone_lamp run tag @s[x=744.5,y=26,z=-60.5,distance=..0.7,tag=check] add can_interact
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=744.5,y=26,z=-60.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/wood
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=744.5,y=26,z=-60.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/guest_room/search/table_2_flipped
execute unless block 742 21 -52 minecraft:redstone_lamp run tag @s[x=744.5,y=20,z=-60.5,distance=..0.7,tag=check] add can_interact
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=744.5,y=20,z=-60.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/wood
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=744.5,y=20,z=-60.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/normal/guest_room/search/boo_check/table_2
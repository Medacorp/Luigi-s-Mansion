execute if block 742 21 -52 minecraft:redstone_lamp run tag @s[x=738.5,y=26,z=-44.5,distance=..0.7,tag=check] add can_interact
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=738.5,y=26,z=-44.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=738.5,y=26,z=-44.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/guest_room/search/chair_flipped
execute unless block 742 21 -52 minecraft:redstone_lamp run tag @s[x=738.5,y=20,z=-44.5,distance=..0.7,tag=check] add can_interact
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=738.5,y=20,z=-44.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=738.5,y=20,z=-44.5,distance=..0.7,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/guest_room/search/boo_check/chair
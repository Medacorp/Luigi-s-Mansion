execute if block 742 21 -52 minecraft:redstone_lamp run tag @s[x=742.0,y=21,z=-52.0,distance=..2,tag=check] add can_interact
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=742.0,y=21,z=-52.0,distance=..2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=742.0,y=21,z=-52.0,distance=..2,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/guest_room/search/lamp_flipped
execute unless block 742 21 -52 minecraft:redstone_lamp run tag @s[x=742.0,y=26,z=-52.0,distance=..2,tag=check] add can_interact
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=742.0,y=26,z=-52.0,distance=..2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=742.0,y=26,z=-52.0,distance=..2,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/guest_room/search/lamp
execute if block 742 21 -52 minecraft:redstone_lamp run tag @s[x=747.0,y=23,z=-48.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=747.0,y=23,z=-48.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=747.0,y=23,z=-48.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/guest_room/search/painting_1_flipped
execute unless block 742 21 -52 minecraft:redstone_lamp run tag @s[x=747.0,y=22,z=-48.0,dx=0,dy=1,dz=1,tag=check] add can_interact
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=747.0,y=22,z=-48.0,dx=0,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=747.0,y=22,z=-48.0,dx=0,dy=1,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/hidden/guest_room/search/boo_check/painting_1
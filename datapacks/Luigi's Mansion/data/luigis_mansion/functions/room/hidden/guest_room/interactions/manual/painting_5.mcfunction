tag @s[x=747.0,y=23,z=74.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=747.0,y=23,z=74.0,dx=0,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if block 742 21 67 minecraft:redstone_lamp if entity @s[x=747.0,y=23,z=74.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/guest_room/search/painting_5_flipped
execute unless block 742 21 67 minecraft:redstone_lamp if entity @s[x=747.0,y=23,z=74.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/guest_room/search/painting_5
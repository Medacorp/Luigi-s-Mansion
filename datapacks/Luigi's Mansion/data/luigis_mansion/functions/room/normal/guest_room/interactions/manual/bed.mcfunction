execute if block 742 21 -52 minecraft:redstone_lamp run tag @s[x=740.0,y=25,z=-61.0,dx=3,dy=1,dz=5,tag=check] add can_interact
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=740.0,y=25,z=-61.0,dx=3,dy=1,dz=5,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=740.0,y=25,z=-61.0,dx=3,dy=1,dz=5,tag=!sound,tag=!check] run function luigis_mansion:room/normal/guest_room/search/bed_flipped
execute unless block 742 21 -52 minecraft:redstone_lamp run tag @s[x=740.0,y=20,z=-61.0,dx=3,dy=1,dz=5,tag=check] add can_interact
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=740.0,y=20,z=-61.0,dx=3,dy=1,dz=5,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=740.0,y=20,z=-61.0,dx=3,dy=1,dz=5,tag=!sound,tag=!check] run function luigis_mansion:room/normal/guest_room/search/bed
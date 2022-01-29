execute if block 742 21 -52 minecraft:redstone_lamp run tag @s[x=736.0,y=24,z=-46.0,dx=0,dy=2,dz=1,tag=check] add can_interact
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=736.0,y=24,z=-46.0,dx=0,dy=2,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=736.0,y=24,z=-46.0,dx=0,dy=2,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/guest_room/search/table_1_flipped
execute unless block 742 21 -52 minecraft:redstone_lamp run tag @s[x=736.0,y=20,z=-46.0,dx=0,dy=2,dz=1,tag=check] add can_interact
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=736.0,y=20,z=-46.0,dx=0,dy=2,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=736.0,y=20,z=-46.0,dx=0,dy=2,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/guest_room/search/table_1
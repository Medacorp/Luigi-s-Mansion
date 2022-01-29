execute if block 742 21 -52 minecraft:redstone_lamp run tag @s[x=736.0,y=23,z=-61.0,dx=1,dy=3,dz=2,tag=check] add can_interact
execute if block 742 21 -52 minecraft:redstone_lamp if entity @s[x=736.0,y=23,z=-61.0,dx=1,dy=3,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/stone
execute unless block 742 21 -52 minecraft:redstone_lamp run tag @s[x=736.0,y=20,z=-61.0,dx=1,dy=3,dz=2,tag=check] add can_interact
execute unless block 742 21 -52 minecraft:redstone_lamp if entity @s[x=736.0,y=20,z=-61.0,dx=1,dy=3,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/stone
function luigis_mansion:entities/king_boo/to_arena
execute unless entity @e[tag=bowser,tag=!dead,limit=1] run setblock 672 29 -19970 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:boss_area/king_boo/create/1"}
execute unless entity @e[tag=bowser,tag=!dead,limit=1] run setblock 672 30 -19970 minecraft:redstone_block
execute unless entity @e[tag=bowser,tag=!dead,limit=1] run setblock 720 29 -19970 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:boss_area/king_boo/create/2"}
execute unless entity @e[tag=bowser,tag=!dead,limit=1] run setblock 720 30 -19970 minecraft:redstone_block
teleport @s 724 41 -19955 -70 0
execute unless entity @e[tag=bowser,tag=!dead,limit=1] positioned 717 85 -19955 run function luigis_mansion:spawn_entities/bowser
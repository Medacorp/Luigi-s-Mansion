function luigis_mansion:entities/boolossus/to_arena
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] run setblock 687 39 -19966 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:boss_area/boolossus/create/1_hidden"}
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] run setblock 687 40 -19966 minecraft:redstone_block
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] run setblock 735 39 -19966 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:boss_area/boolossus/create/2_hidden"}
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] run setblock 735 40 -19966 minecraft:redstone_block
execute unless entity @e[tag=boolossus,tag=battle,tag=!dead,limit=1] positioned 720.0 104 -19953 run function luigis_mansion:spawn_entities/portrait_ghost/boolossus/battle
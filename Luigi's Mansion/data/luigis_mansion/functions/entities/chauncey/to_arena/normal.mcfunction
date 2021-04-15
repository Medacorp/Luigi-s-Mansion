execute unless entity @e[tag=chauncey,tag=fight,tag=!dead,limit=1] run setblock 709 39 -19961 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:boss_area/chauncey/create"}
execute unless entity @e[tag=chauncey,tag=fight,tag=!dead,limit=1] run setblock 709 40 -19961 minecraft:redstone_block
scoreboard players set @s Room 60
teleport @s 720.0 41 -19952.0 0 0
execute unless entity @e[tag=chauncey,tag=fight,tag=!dead,limit=1] positioned 720.0 34 -19940.0 run function luigis_mansion:spawn_entities/portrait_ghost/chauncey/big
function luigis_mansion:entities/chauncey/to_arena
execute unless score #ghost_portrificationizer Search matches 1 run scoreboard players reset #ghost_portrificationizer Searching
scoreboard players reset #ghost_portrificationizer Search
execute if score #ghost_portrificationizer Searching matches 20 unless entity @e[tag=e_gadd,tag=portrificationizing,limit=1] run function #luigis_mansion:room/ghost_portrificationizer_room/portrificationize
tag @a[tag=calls_portrificationizing,limit=1] remove calls_portrificationizing
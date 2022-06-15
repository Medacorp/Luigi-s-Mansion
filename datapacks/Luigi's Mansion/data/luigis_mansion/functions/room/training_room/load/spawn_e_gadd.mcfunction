execute positioned 795.0 75 -8.0 unless entity @e[distance=..0.7,tag=e_gadd,limit=1] run scoreboard players set #training_room GhostCaught 0
execute positioned 795.0 75 -8.0 unless entity @e[distance=..0.7,tag=e_gadd,limit=1] run function luigis_mansion:spawn_entities/e_gadd
execute positioned 795.0 75 -8.0 run data merge entity @e[distance=..0.7,tag=e_gadd,limit=1] {CustomNameVisible:0b}
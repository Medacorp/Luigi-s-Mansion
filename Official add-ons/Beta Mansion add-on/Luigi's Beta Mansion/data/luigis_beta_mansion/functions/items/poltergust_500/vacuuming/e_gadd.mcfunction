execute positioned ^ ^ ^ run particle minecraft:dust 0.5 0.5 0.5 0.7 ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute positioned ^ ^0.5 ^ run particle minecraft:dust 0.5 0.5 0.5 0.7 ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute positioned ^ ^-0.5 ^ run particle minecraft:dust 0.5 0.5 0.5 0.7 ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute positioned ^0.5 ^ ^ run particle minecraft:dust 0.5 0.5 0.5 0.7 ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute positioned ^-0.5 ^ ^ run particle minecraft:dust 0.5 0.5 0.5 0.7 ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute unless entity @s[distance=..0.5] positioned ^ ^ ^0.5 run function luigis_beta_mansion:items/poltergust_500/vacuuming/e_gadd
scoreboard players reset #temp Steps
execute if entity @e[tag=e_gadd,tag=poltergust,limit=1,tag=!vacuuming] run playsound luigis_beta_mansion:item.poltergust_500.vacuuming_start player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @e[tag=e_gadd,tag=poltergust,limit=1,tag=!vacuuming] PoltergustSound 20
execute if entity @e[tag=e_gadd,tag=poltergust,limit=1,tag=vacuuming,scores={PoltergustSound=0}] run playsound luigis_beta_mansion:item.poltergust_500.vacuuming player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @e[tag=e_gadd,tag=poltergust,limit=1,tag=vacuuming,scores={PoltergustSound=0}] PoltergustSound 20
tag @e[tag=e_gadd,tag=poltergust,limit=1] add vacuuming
tag @s add broken
data modify entity @s ArmorItems[3].tag.CustomModelData set value 3
scoreboard players set @s VacuumTime 0
scoreboard players operation #temp ID = @s VacuumHitter
execute as @a[tag=same_room] if score #temp ID = @s ID at @s positioned ~ ~0.5 ~ positioned ^ ^ ^0.5 run particle minecraft:dust 0.7 1 1 1 ~ ~ ~ 0.2 0.2 0.2 1 10
scoreboard players reset #temp ID
execute at @s if score #x Time matches 1 run teleport @s ~-0.5 ~ ~
execute at @s if score #y Time matches 1 run teleport @s ~ ~-0.5 ~
execute at @s if score #z Time matches 1 run teleport @s ~ ~ ~-0.5
execute store result score #temp Time run data get entity @s Pos[0] 10
execute store result entity @s Pos[0] double 0.1 run scoreboard players operation #temp Time -= #x Steps
execute store result score #temp Time run data get entity @s Pos[1] 10
execute store result entity @s Pos[1] double 0.1 run scoreboard players operation #temp Time -= #y Steps
execute store result score #temp Time run data get entity @s Pos[2] 10
execute store result entity @s Pos[2] double 0.1 run scoreboard players operation #temp Time -= #z Steps
scoreboard players reset #temp Time
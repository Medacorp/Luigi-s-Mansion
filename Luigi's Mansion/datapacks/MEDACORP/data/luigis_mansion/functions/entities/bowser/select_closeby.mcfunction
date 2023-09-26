execute store result score #temp Time run random value 1..2
execute if score #temp Time matches 1 run tag @s add breathe_fire
execute if score #temp Time matches 2 run tag @s add vacuum
scoreboard players reset #temp Time
execute store result score #temp Time run data get entity @s Rotation[0]
execute store result score #temp2 Time run random value -30..30
execute store result entity @s Rotation[0] float 1 run scoreboard players operation #temp Time += #temp2 Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
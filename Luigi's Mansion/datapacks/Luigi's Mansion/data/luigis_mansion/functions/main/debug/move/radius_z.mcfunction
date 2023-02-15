execute store result score #temp Time run data get entity @s Pos[2] 100
execute store result entity @s Pos[2] double 0.01 run scoreboard players operation #temp Time += #temp2 FurnitureSizeF
scoreboard players reset #temp Time
scoreboard players reset #temp2 FurnitureSizeF
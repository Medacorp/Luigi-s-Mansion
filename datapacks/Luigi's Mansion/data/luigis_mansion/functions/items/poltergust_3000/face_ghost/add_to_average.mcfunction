execute store result score #temp2 PosX run data get entity @s Pos[0] 100
execute store result score #temp2 PosY run data get entity @s Pos[1] 100
execute store result score #temp2 PosZ run data get entity @s Pos[2] 100
scoreboard players operation #temp PosX += #temp2 PosX
scoreboard players operation #temp PosY += #temp2 PosY
scoreboard players operation #temp PosZ += #temp2 PosZ
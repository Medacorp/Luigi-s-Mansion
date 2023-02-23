execute store result score #temp2 PositionX run data get entity @s Pos[0] 100
execute store result score #temp2 PositionY run data get entity @s Pos[1] 100
execute store result score #temp2 PositionZ run data get entity @s Pos[2] 100
scoreboard players operation #temp PositionX += #temp2 PositionX
scoreboard players operation #temp PositionY += #temp2 PositionY
scoreboard players operation #temp PositionZ += #temp2 PositionZ
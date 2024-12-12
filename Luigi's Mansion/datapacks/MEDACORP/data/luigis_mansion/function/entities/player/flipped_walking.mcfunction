execute if entity @s[scores={Shrunk=0}] if block ~ ~1.8 ~ #luigis_mansion:ghosts_ignore run tag @s add walking
execute if entity @s[scores={Shrunk=1..}] if block ~ ~0.9 ~ #luigis_mansion:ghosts_ignore run tag @s add walking
execute store result score #temp PositionX run data get entity @s Pos[0] 100
execute store result score #temp PositionZ run data get entity @s Pos[2] 100
execute unless score @s PositionX = #temp PositionX run tag @s add walking
execute unless score @s PositionZ = #temp PositionZ run tag @s add walking
scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionZ
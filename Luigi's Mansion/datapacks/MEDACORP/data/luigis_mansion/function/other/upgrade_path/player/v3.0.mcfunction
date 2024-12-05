scoreboard players set @s UpgradePlayer 1
execute unless entity @s[scores={Room=0}] in minecraft:overworld run teleport @s 758 90 8.0 -90 0
scoreboard players set @s Room 0
scoreboard players set @s LastRoom 0
tag @s[gamemode=spectator] add dead_player
attribute @s minecraft:jump_strength base set 0
attribute @s[scores={Shrunk=1..}] minecraft:scale base set 0.5

clear @s
scoreboard players operation #temp LastHealth = @s Health
scoreboard players set #temp Health 10
scoreboard players operation @s[scores={Room=1..}] Health -= #temp Health
scoreboard players remove @s[scores={Room=..0}] Health 10
scoreboard players operation #temp Health = @s Health
scoreboard players operation #temp LastHealth /= #100 Constants
scoreboard players operation #temp Health /= #100 Constants
scoreboard players set @s[scores={Health=..-1}] Health 0
execute unless score #temp LastHealth = #temp Health at @s run particle minecraft:damage_indicator ~ ~0.6 ~ 0.2 0.2 0.2 0 1
scoreboard players reset #temp LastHealth
scoreboard players reset #temp Health
execute store result score #temp TargetY run data get entity @s Pos[1] 10
execute if score #temp TargetY < @s TargetY run teleport @s ~ ~0.2 ~
execute unless score #temp TargetY < @s TargetY run teleport @s ~ ~-0.2 ~
scoreboard players reset #temp TargetY
execute if entity @s[scores={HurtTime=10}] store result entity @s Pos[1] double 0.1 run scoreboard players get @s TargetY
execute unless entity @s[scores={Dialog=1..}] run scoreboard players set @s Dialog 1
teleport @s[scores={Dialog=1}] ~ ~ ~ facing 707 11 -40
scoreboard players set @s[x=707.5,y=11,z=-39.5,distance=..0.7,scores={Dialog=1}] Dialog 2
teleport @s[scores={Dialog=2}] ~ ~ ~ facing 709 11 -37
scoreboard players set @s[x=709.5,y=11,z=-36.5,distance=..0.7,scores={Dialog=2}] Dialog 3
teleport @s[scores={Dialog=3}] ~ ~ ~ facing 706 11 -30
scoreboard players add @s[x=706.5,y=11,z=-29.5,distance=..0.7,scores={Dialog=3..12}] Dialog 1
tag @s[scores={Dialog=4}] add placing_food
scoreboard players set @s[scores={Dialog=4}] AnimationProg 0
execute if entity @s[scores={Dialog=6}] run scoreboard players set @e[tag=mr_luggs,scores={Dialog=2..99},limit=1] Dialog 1
teleport @s[scores={Dialog=13}] ~ ~ ~ facing 708 11 -26
scoreboard players set @s[x=708.5,y=11,z=-25.5,distance=..0.7,scores={Dialog=13}] Dialog 14
teleport @s[scores={Dialog=14}] ~ ~ ~ facing 707 11 -18
scoreboard players set @s[x=707.5,y=11,z=-17.5,distance=..0.7,scores={Dialog=14}] Dialog 15
teleport @s[scores={Dialog=15}] ~ ~ ~ facing 702 11 -15
scoreboard players set @s[x=702.5,y=11,z=-14.5,distance=..0.7,scores={Dialog=15}] Dialog 16
teleport @s[scores={Dialog=16}] ~ ~ ~ facing 700 11 -17
scoreboard players set @s[x=700.5,y=11,z=-16.5,distance=..0.7,scores={Dialog=16}] Dialog 17
teleport @s[scores={Dialog=17}] ~ ~ ~ facing 700 11 -41
tag @s[x=700.5,y=11,z=-40.5,distance=..0.7,scores={Dialog=17}] add disappear
scoreboard players set @s[scores={Dialog=17}] Move 3

execute unless entity @s[scores={Dialog=4..12}] at @s run function luigis_mansion:entities/ghost/move
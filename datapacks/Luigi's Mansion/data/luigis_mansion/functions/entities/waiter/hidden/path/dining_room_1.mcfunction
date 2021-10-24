execute unless entity @s[scores={Dialog=1..}] run scoreboard players set @s Dialog 1
teleport @s[scores={Dialog=1}] ~ ~ ~ facing 701 11 -19
scoreboard players set @s[x=701.5,y=11,z=-18.5,distance=..0.7,scores={Dialog=1}] Dialog 2
teleport @s[scores={Dialog=2}] ~ ~ ~ facing 700 11 -23
scoreboard players set @s[x=700.5,y=11,z=-22.5,distance=..0.7,scores={Dialog=2}] Dialog 3
teleport @s[scores={Dialog=3}] ~ ~ ~ facing 700 11 -30
scoreboard players set @s[x=700.5,y=11,z=-29.5,distance=..0.7,scores={Dialog=3}] Dialog 4
teleport @s[scores={Dialog=4}] ~ ~ ~ facing 702 11 -30
scoreboard players add @s[x=702.5,y=11,z=-29.5,distance=..0.7,scores={Dialog=4..13}] Dialog 1
execute if entity @e[tag=mr_luggs,scores={Dialog=..100}] run tag @s[scores={Dialog=5}] add placing_food
execute if entity @e[tag=mr_luggs,scores={Dialog=101..}] run tag @s[scores={Dialog=5}] add complain
scoreboard players set @s[scores={Dialog=5}] AnimationProg 0
execute if entity @s[scores={Dialog=7}] run scoreboard players set @e[tag=mr_luggs,scores={Dialog=2..99},limit=1] Dialog 1
teleport @s[scores={Dialog=14}] ~ ~ ~ facing 701 11 -33
scoreboard players set @s[x=701.5,y=11,z=-32.5,distance=..0.7,scores={Dialog=14}] Dialog 15
teleport @s[scores={Dialog=15}] ~ ~ ~ facing 701 11 -38
scoreboard players set @s[x=701.5,y=11,z=-37.5,distance=..0.7,scores={Dialog=15}] Dialog 16
teleport @s[scores={Dialog=16}] ~ ~ ~ facing 704 11 -40
scoreboard players set @s[x=704.5,y=11,z=-39.5,distance=..0.7,scores={Dialog=16}] Dialog 17
teleport @s[scores={Dialog=17}] ~ ~ ~ facing 707 11 -39
scoreboard players set @s[x=707.5,y=11,z=-38.5,distance=..0.7,scores={Dialog=17}] Dialog 18
teleport @s[scores={Dialog=18}] ~ ~ ~ facing 708 11 -18
scoreboard players set @s[x=708.5,y=11,z=-17.5,distance=..0.7,scores={Dialog=18}] Dialog 19
teleport @s[scores={Dialog=19}] ~ ~ ~ facing 704 11 -15
tag @s[x=704.5,y=11,z=-14.5,distance=..0.7,scores={Dialog=19}] add disappear
scoreboard players set @s[scores={Dialog=19}] Move 3

execute unless entity @s[scores={Dialog=5..13}] at @s run function luigis_mansion:entities/ghost/move
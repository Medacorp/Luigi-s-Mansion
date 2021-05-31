execute unless entity @s[scores={Dialog=1..}] run scoreboard players set @s Dialog 1
teleport @s[scores={Dialog=1}] ~ ~ ~ facing 689 102 12
scoreboard players set @s[x=689.5,y=102,z=12.5,distance=..0.7,scores={Dialog=1}] Dialog 2
teleport @s[scores={Dialog=2}] ~ ~ ~ facing 688 102 7
scoreboard players set @s[x=688.5,y=102,z=7.5,distance=..0.7,scores={Dialog=2}] Dialog 3
teleport @s[scores={Dialog=3}] ~ ~ ~ facing 688 102 1
scoreboard players set @s[x=688.5,y=102,z=1.5,distance=..0.7,scores={Dialog=3}] Dialog 4
teleport @s[scores={Dialog=4}] ~ ~ ~ facing 690 102 1
scoreboard players add @s[x=690.5,y=102,z=1.5,distance=..0.7,scores={Dialog=4..13}] Dialog 1
tag @s[scores={Dialog=5}] add placing_food
scoreboard players set @s[scores={Dialog=5}] AnimationProg 0
execute if entity @s[scores={Dialog=7}] run scoreboard players set @e[tag=mr_luggs,scores={Dialog=2..99},limit=1] Dialog 1
teleport @s[scores={Dialog=14}] ~ ~ ~ facing 689 102 -2
scoreboard players set @s[x=689.5,y=102,z=-1.5,distance=..0.7,scores={Dialog=14}] Dialog 15
teleport @s[scores={Dialog=15}] ~ ~ ~ facing 689 102 -7
scoreboard players set @s[x=689.5,y=102,z=-6.5,distance=..0.7,scores={Dialog=15}] Dialog 16
teleport @s[scores={Dialog=16}] ~ ~ ~ facing 692 102 -9
scoreboard players set @s[x=692.5,y=102,z=-8.5,distance=..0.7,scores={Dialog=16}] Dialog 17
teleport @s[scores={Dialog=17}] ~ ~ ~ facing 695 102 -8
scoreboard players set @s[x=695.5,y=102,z=-7.5,distance=..0.7,scores={Dialog=17}] Dialog 18
teleport @s[scores={Dialog=18}] ~ ~ ~ facing 696 102 13
scoreboard players set @s[x=696.5,y=102,z=13.5,distance=..0.7,scores={Dialog=18}] Dialog 19
teleport @s[scores={Dialog=19}] ~ ~ ~ facing 692 102 16
tag @s[x=692.5,y=102,z=16.5,distance=..0.7,scores={Dialog=19}] add disappear
scoreboard players set @s[scores={Dialog=19}] Move 3

execute unless entity @s[scores={Dialog=5..13}] at @s run function luigis_mansion:entities/ghost/move
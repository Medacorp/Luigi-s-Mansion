execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 701 11 -19
scoreboard players set @s[x=701.5,y=11,z=-18.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 700 11 -23
scoreboard players set @s[x=700.5,y=11,z=-22.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 700 11 -30
scoreboard players set @s[x=700.5,y=11,z=-29.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 702 11 -30
scoreboard players add @s[x=702.5,y=11,z=-29.5,distance=..0.7,scores={PathStep=4..13}] PathStep 1
execute if entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"mr_luggs"}}]},scores={Dialog=..100}] run tag @s[scores={PathStep=5}] add placing_food
execute if entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"mr_luggs"}}]},scores={Dialog=101..}] run tag @s[scores={PathStep=5}] add complain
scoreboard players set @s[scores={PathStep=5}] AnimationProgress 0
execute if entity @s[scores={PathStep=7}] run scoreboard players set @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"mr_luggs"}}]},scores={Dialog=2..99},limit=1] Dialog 1
teleport @s[scores={PathStep=14}] ~ ~ ~ facing 701 11 -33
scoreboard players set @s[x=701.5,y=11,z=-32.5,distance=..0.7,scores={PathStep=14}] PathStep 15
teleport @s[scores={PathStep=15}] ~ ~ ~ facing 701 11 -38
scoreboard players set @s[x=701.5,y=11,z=-37.5,distance=..0.7,scores={PathStep=15}] PathStep 16
teleport @s[scores={PathStep=16}] ~ ~ ~ facing 704 11 -40
scoreboard players set @s[x=704.5,y=11,z=-39.5,distance=..0.7,scores={PathStep=16}] PathStep 17
teleport @s[scores={PathStep=17}] ~ ~ ~ facing 707 11 -39
scoreboard players set @s[x=707.5,y=11,z=-38.5,distance=..0.7,scores={PathStep=17}] PathStep 18
teleport @s[scores={PathStep=18}] ~ ~ ~ facing 708 11 -18
scoreboard players set @s[x=708.5,y=11,z=-17.5,distance=..0.7,scores={PathStep=18}] PathStep 19
teleport @s[scores={PathStep=19}] ~ ~ ~ facing 704 11 -15
tag @s[x=704.5,y=11,z=-14.5,distance=..0.7,scores={PathStep=19}] add disappear
scoreboard players set @s[scores={PathStep=19}] Move 15

execute unless entity @s[scores={PathStep=5..13}] at @s run function luigis_mansion:entities/ghost/move
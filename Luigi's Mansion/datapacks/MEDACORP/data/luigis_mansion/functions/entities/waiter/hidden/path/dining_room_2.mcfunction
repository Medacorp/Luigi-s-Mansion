execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 707 11 -40
scoreboard players set @s[x=707.5,y=11,z=-39.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 709 11 -37
scoreboard players set @s[x=709.5,y=11,z=-36.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 706 11 -30
scoreboard players add @s[x=706.5,y=11,z=-29.5,distance=..0.7,scores={PathStep=3..12}] PathStep 1
execute if entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"mr_luggs"}}}]},scores={Dialog=..100}] run tag @s[scores={PathStep=4}] add placing_food
execute if entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"mr_luggs"}}}]},scores={Dialog=101..}] run tag @s[scores={PathStep=4}] add complain
scoreboard players set @s[scores={PathStep=4}] AnimationProgress 0
execute if entity @s[scores={PathStep=6}] run scoreboard players set @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"mr_luggs"}}}]},scores={Dialog=2..99},limit=1] Dialog 1
teleport @s[scores={PathStep=13}] ~ ~ ~ facing 708 11 -26
scoreboard players set @s[x=708.5,y=11,z=-25.5,distance=..0.7,scores={PathStep=13}] PathStep 14
teleport @s[scores={PathStep=14}] ~ ~ ~ facing 707 11 -18
scoreboard players set @s[x=707.5,y=11,z=-17.5,distance=..0.7,scores={PathStep=14}] PathStep 15
teleport @s[scores={PathStep=15}] ~ ~ ~ facing 702 11 -15
scoreboard players set @s[x=702.5,y=11,z=-14.5,distance=..0.7,scores={PathStep=15}] PathStep 16
teleport @s[scores={PathStep=16}] ~ ~ ~ facing 700 11 -17
scoreboard players set @s[x=700.5,y=11,z=-16.5,distance=..0.7,scores={PathStep=16}] PathStep 17
teleport @s[scores={PathStep=17}] ~ ~ ~ facing 700 11 -41
tag @s[x=700.5,y=11,z=-40.5,distance=..0.7,scores={PathStep=17}] add disappear
scoreboard players set @s[scores={PathStep=17}] Move 15

execute unless entity @s[scores={PathStep=4..12}] at @s run function luigis_mansion:entities/ghost/move
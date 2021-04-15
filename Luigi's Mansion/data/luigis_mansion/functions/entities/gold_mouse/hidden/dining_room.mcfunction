execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 690 102 14
scoreboard players set @s[x=690.5,y=102,z=14.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 695 102 14
scoreboard players set @s[x=695.5,y=102,z=14.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 695 102 -8
scoreboard players set @s[x=695.5,y=102,z=-7.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 689 102 -8
scoreboard players set @s[x=689.5,y=102,z=-7.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 689 102 15
scoreboard players set @s[x=689.5,y=102,z=15.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 686 102 15
tag @s[x=686.5,y=102,z=15.5,distance=..0.7] add remove_from_existence
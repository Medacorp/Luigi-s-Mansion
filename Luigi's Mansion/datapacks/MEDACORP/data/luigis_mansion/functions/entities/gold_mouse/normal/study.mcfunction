execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 705 20 45
scoreboard players set @s[x=705.5,y=20,z=45.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 711 20 45
scoreboard players set @s[x=711.5,y=20,z=45.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 713 20 49
scoreboard players set @s[x=713.5,y=20,z=49.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 712 20 53
scoreboard players set @s[x=712.5,y=20,z=53.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 708 20 54
scoreboard players set @s[x=708.5,y=20,z=54.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 706 20 57
scoreboard players set @s[x=706.5,y=20,z=57.5,distance=..0.7,scores={PathStep=6}] PathStep 7
teleport @s[scores={PathStep=7}] ~ ~ ~ facing 702 20 57
tag @s[x=702.5,y=20,z=57.5,distance=..0.7] add remove_from_existence
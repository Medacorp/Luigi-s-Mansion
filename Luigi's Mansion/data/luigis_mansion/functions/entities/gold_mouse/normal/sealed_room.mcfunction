execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 701 20 -68
scoreboard players set @s[x=701.5,y=20,z=-67.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 702 20 -75
scoreboard players set @s[x=702.5,y=20,z=-74.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 699 21 -77
scoreboard players set @s[x=699.5,y=21,z=-76.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 696 21 -79
scoreboard players set @s[x=696.5,y=21,z=-78.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 696 21 -83
scoreboard players set @s[x=696.5,y=21,z=-82.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 694 21 -83
tag @s[x=694.5,y=21,z=-82.5,distance=..0.7] add remove_from_existence
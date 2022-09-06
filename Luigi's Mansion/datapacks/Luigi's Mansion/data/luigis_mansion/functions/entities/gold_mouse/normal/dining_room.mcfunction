execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 702 11 32
scoreboard players set @s[x=702.5,y=11,z=32.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 707 11 32
scoreboard players set @s[x=707.5,y=11,z=32.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 707 11 54
scoreboard players set @s[x=707.5,y=11,z=54.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 701 11 54
scoreboard players set @s[x=701.5,y=11,z=54.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 701 11 31
scoreboard players set @s[x=701.5,y=11,z=31.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 698 11 31
tag @s[x=698.5,y=11,z=31.5,distance=..0.7] add remove_from_existence
execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 702 11 -71
scoreboard players set @s[x=702.5,y=11,z=-70.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 708 11 -66
scoreboard players set @s[x=708.5,y=11,z=-65.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 702 11 -61
scoreboard players set @s[x=702.5,y=11,z=-60.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 708 11 -56
scoreboard players set @s[x=708.5,y=11,z=-55.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 702 11 -52
scoreboard players set @s[x=702.5,y=11,z=-51.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 699 11 -52
tag @s[x=699.5,y=11,z=-51.5,distance=..0.7] add remove_from_existence
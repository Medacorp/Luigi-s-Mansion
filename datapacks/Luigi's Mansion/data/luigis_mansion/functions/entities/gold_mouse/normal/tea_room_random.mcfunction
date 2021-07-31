execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 646 20 -37
scoreboard players set @s[x=646.5,y=20,z=-36.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 646 20 -57
scoreboard players set @s[x=646.5,y=20,z=-56.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 646 20 -34
scoreboard players set @s[x=646.5,y=20,z=-33.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 646 20 -57
scoreboard players set @s[x=646.5,y=20,z=-56.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 646 20 -34
scoreboard players set @s[x=646.5,y=20,z=-33.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 646 20 -54
scoreboard players set @s[x=646.5,y=20,z=-53.5,distance=..0.7,scores={PathStep=6}] PathStep 7
teleport @s[scores={PathStep=7}] ~ ~ ~ facing 648 20 -54
tag @s[x=648.5,y=20,z=-53.5,distance=..0.7] add remove_from_existence
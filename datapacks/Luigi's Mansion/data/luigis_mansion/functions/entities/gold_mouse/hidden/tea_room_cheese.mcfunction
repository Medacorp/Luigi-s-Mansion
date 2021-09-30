execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 641 20 60
scoreboard players set @s[x=641.5,y=20,z=60.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 646 20 60
scoreboard players set @s[x=646.5,y=20,z=60.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 646 20 72
scoreboard players set @s[x=646.5,y=20,z=72.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 646 20 49
scoreboard players set @s[x=646.5,y=20,z=49.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 646 20 72
scoreboard players set @s[x=646.5,y=20,z=72.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 646 20 49
scoreboard players set @s[x=646.5,y=20,z=49.5,distance=..0.7,scores={PathStep=6}] PathStep 7
teleport @s[scores={PathStep=7}] ~ ~ ~ facing 646 20 60
scoreboard players set @s[x=646.5,y=20,z=60.5,distance=..0.7,scores={PathStep=7}] PathStep 8
teleport @s[scores={PathStep=8}] ~ ~ ~ facing 638 20 60
tag @s[x=638.5,y=20,z=60.5,distance=..0.7] add remove_from_existence
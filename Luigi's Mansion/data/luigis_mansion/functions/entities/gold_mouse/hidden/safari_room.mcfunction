execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 712 120 49
scoreboard players set @s[x=712.5,y=120,z=49.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 709 120 44
scoreboard players set @s[x=709.5,y=120,z=44.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 714 120 41
scoreboard players set @s[x=714.5,y=120,z=41.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 716 120 41
scoreboard players set @s[x=716.5,y=120,z=41.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 716 120 43
scoreboard players set @s[x=716.5,y=120,z=43.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 714 120 43
scoreboard players set @s[x=714.5,y=120,z=43.5,distance=..0.7,scores={PathStep=6}] PathStep 7
teleport @s[scores={PathStep=7}] ~ ~ ~ facing 712 120 37
scoreboard players set @s[x=712.5,y=120,z=37.5,distance=..0.7,scores={PathStep=7}] PathStep 8
teleport @s[scores={PathStep=8}] ~ ~ ~ facing 707 120 32
tag @s[x=707.5,y=120,z=32.5,distance=..0.7] add remove_from_existence
execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 739 29 67
scoreboard players set @s[x=739.5,y=29,z=67.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 736 29 62
scoreboard players set @s[x=736.5,y=29,z=62.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 741 29 59
scoreboard players set @s[x=741.5,y=29,z=59.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 743 29 59
scoreboard players set @s[x=743.5,y=29,z=59.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 743 29 61
scoreboard players set @s[x=743.5,y=29,z=61.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 741 29 61
scoreboard players set @s[x=741.5,y=29,z=61.5,distance=..0.7,scores={PathStep=6}] PathStep 7
teleport @s[scores={PathStep=7}] ~ ~ ~ facing 739 29 55
scoreboard players set @s[x=739.5,y=29,z=55.5,distance=..0.7,scores={PathStep=7}] PathStep 8
teleport @s[scores={PathStep=8}] ~ ~ ~ facing 734 29 50
tag @s[x=734.5,y=29,z=50.5,distance=..0.7] add remove_from_existence
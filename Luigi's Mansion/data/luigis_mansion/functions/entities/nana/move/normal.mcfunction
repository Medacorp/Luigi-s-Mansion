execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 659 111.5 9
scoreboard players set @s[x=659.5,y=111.5,z=9.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 662 111.5 12
scoreboard players set @s[x=662.5,y=111.5,z=12.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 659 111.5 15
scoreboard players set @s[x=659.5,y=111.5,z=15.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 656 111.5 12
scoreboard players set @s[x=656.5,y=111.5,z=12.5,distance=..0.7,scores={PathStep=4}] PathStep 1
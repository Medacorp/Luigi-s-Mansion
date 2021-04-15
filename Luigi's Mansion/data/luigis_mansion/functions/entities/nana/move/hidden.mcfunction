execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 659 111.5 6
scoreboard players set @s[x=659.5,y=111.5,z=6.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 662 111.5 3
scoreboard players set @s[x=662.5,y=111.5,z=3.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 659 111.5 0
scoreboard players set @s[x=659.5,y=111.5,z=0.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 656 111.5 3
scoreboard players set @s[x=656.5,y=111.5,z=3.5,distance=..0.7,scores={PathStep=4}] PathStep 1
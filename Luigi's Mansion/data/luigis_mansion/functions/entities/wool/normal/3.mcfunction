execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 660 111 8
scoreboard players set @s[x=660.5,y=111,z=8.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 663 111 14
scoreboard players set @s[x=663.5,y=111,z=14.5,distance=..0.7,scores={PathStep=2}] PathStep 1
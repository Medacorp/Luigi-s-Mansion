execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 659 20 -11
scoreboard players set @s[x=659.5,y=20,z=-10.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 662 20 -5
scoreboard players set @s[x=662.5,y=20,z=-4.5,distance=..0.7,scores={PathStep=2}] PathStep 1
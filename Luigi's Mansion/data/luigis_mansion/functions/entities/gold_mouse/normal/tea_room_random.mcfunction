execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 662 111 -17
scoreboard players set @s[x=662.5,y=111,z=-16.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 662 111 -37
scoreboard players set @s[x=662.5,y=111,z=-36.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 662 111 -14
scoreboard players set @s[x=662.5,y=111,z=-13.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 662 111 -37
scoreboard players set @s[x=662.5,y=111,z=-36.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 662 111 -14
scoreboard players set @s[x=662.5,y=111,z=-13.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 662 111 -34
scoreboard players set @s[x=662.5,y=111,z=-33.5,distance=..0.7,scores={PathStep=6}] PathStep 7
teleport @s[scores={PathStep=7}] ~ ~ ~ facing 664 111 -34
tag @s[x=664.5,y=111,z=-33.5,distance=..0.7] add remove_from_existence
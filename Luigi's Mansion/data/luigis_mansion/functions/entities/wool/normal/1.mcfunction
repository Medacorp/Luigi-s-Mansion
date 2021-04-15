execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 659 111 6
scoreboard players set @s[x=659.5,y=111,z=6.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 658 111 4
scoreboard players set @s[x=658.5,y=111,z=4.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 657 111 7
scoreboard players set @s[x=657.5,y=111,z=7.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 659 111 4
scoreboard players set @s[x=659.5,y=111,z=4.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 657 111 7
scoreboard players set @s[x=657.5,y=111,z=7.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 658 111 4
scoreboard players set @s[x=658.5,y=111,z=4.5,distance=..0.7,scores={PathStep=6}] PathStep 7
teleport @s[scores={PathStep=7}] ~ ~ ~ facing 659 111 6
scoreboard players set @s[x=659.5,y=111,z=6.5,distance=..0.7,scores={PathStep=7}] PathStep 2
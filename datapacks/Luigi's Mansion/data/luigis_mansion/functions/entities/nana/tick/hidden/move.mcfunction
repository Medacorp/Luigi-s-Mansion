execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 658 20.6 25
scoreboard players set @s[x=658.5,y=20.6,z=25.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 661 20.6 22
scoreboard players set @s[x=661.5,y=20.6,z=22.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 658 20.6 19
scoreboard players set @s[x=658.5,y=20.6,z=19.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 655 20.6 22
scoreboard players set @s[x=655.5,y=20.6,z=22.5,distance=..0.7,scores={PathStep=4}] PathStep 1
execute at @s run function luigis_mansion:entities/nana/move_forward
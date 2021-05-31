execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 690 111 37
scoreboard players set @s[x=690.5,y=111,z=37.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 691 111 44
scoreboard players set @s[x=691.5,y=111,z=44.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 688 112 46
scoreboard players set @s[x=688.5,y=112,z=46.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 685 112 48
scoreboard players set @s[x=685.5,y=112,z=48.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 685 112 52
scoreboard players set @s[x=685.5,y=112,z=52.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 683 112 52
tag @s[x=683.5,y=112,z=52.5,distance=..0.7] add remove_from_existence
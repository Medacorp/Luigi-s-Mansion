execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 687 111 -5
scoreboard players set @s[x=687.5,y=111,z=-4.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 693 111 -5
scoreboard players set @s[x=693.5,y=111,z=-4.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 695 111 -9
scoreboard players set @s[x=695.5,y=111,z=-8.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 694 111 -13
scoreboard players set @s[x=694.5,y=111,z=-12.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 691 111 -14
scoreboard players set @s[x=691.5,y=111,z=-13.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 688 111 -17
scoreboard players set @s[x=688.5,y=111,z=-16.5,distance=..0.7,scores={PathStep=6}] PathStep 7
teleport @s[scores={PathStep=7}] ~ ~ ~ facing 684 111 -17
tag @s[x=684.5,y=111,z=-17.5,distance=..0.7] add remove_from_existence
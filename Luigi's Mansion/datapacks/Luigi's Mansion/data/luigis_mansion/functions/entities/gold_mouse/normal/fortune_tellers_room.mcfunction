execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 738 11 -23
scoreboard players set @s[x=738.5,y=11,z=-22.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 743 11 -22
scoreboard players set @s[x=743.5,y=11,z=-21.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 743 11 -25
scoreboard players set @s[x=743.5,y=11,z=-24.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 745 11 -26
scoreboard players set @s[x=745.5,y=11,z=-25.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 745 11 -36
scoreboard players set @s[x=745.5,y=11,z=-35.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 743 11 -36
scoreboard players set @s[x=743.5,y=11,z=-35.5,distance=..0.7,scores={PathStep=6}] PathStep 7
teleport @s[scores={PathStep=7}] ~ ~ ~ facing 743 11 -33
scoreboard players set @s[x=743.5,y=11,z=-32.5,distance=..0.7,scores={PathStep=7}] PathStep 8
teleport @s[scores={PathStep=8}] ~ ~ ~ facing 745 11 -33
scoreboard players set @s[x=745.5,y=11,z=-32.5,distance=..0.7,scores={PathStep=8}] PathStep 9
teleport @s[scores={PathStep=9}] ~ ~ ~ facing 745 11 -36
scoreboard players set @s[x=745.5,y=11,z=-35.5,distance=..0.7,scores={PathStep=9}] PathStep 10
teleport @s[scores={PathStep=10}] ~ ~ ~ facing 740 11 -35
scoreboard players set @s[x=740.5,y=11,z=-34.5,distance=..0.7,scores={PathStep=10}] PathStep 11
teleport @s[scores={PathStep=11}] ~ ~ ~ facing 738 11 -38
tag @s[x=738.5,y=11,z=-37.5,distance=..0.7] add remove_from_existence
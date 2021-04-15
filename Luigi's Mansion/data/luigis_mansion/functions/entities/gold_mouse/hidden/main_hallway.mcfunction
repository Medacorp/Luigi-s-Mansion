execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 700 102 22
scoreboard players set @s[x=700.5,y=102,z=22.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 696 102 20
scoreboard players set @s[x=696.5,y=102,z=20.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 692 102 22
scoreboard players set @s[x=692.5,y=102,z=22.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 688 102 20
scoreboard players set @s[x=688.5,y=102,z=20.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 684 102 22
scoreboard players set @s[x=684.5,y=102,z=22.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 680 102 20
scoreboard players set @s[x=680.5,y=102,z=20.5,distance=..0.7,scores={PathStep=6}] PathStep 7
teleport @s[scores={PathStep=7}] ~ ~ ~ facing 676 102 22
scoreboard players set @s[x=676.5,y=102,z=22.5,distance=..0.7,scores={PathStep=7}] PathStep 8
teleport @s[scores={PathStep=8}] ~ ~ ~ facing 672 102 20
scoreboard players set @s[x=672.5,y=102,z=20.5,distance=..0.7,scores={PathStep=8}] PathStep 9
teleport @s[scores={PathStep=9}] ~ ~ ~ facing 668 102 22
scoreboard players set @s[x=668.5,y=102,z=22.5,distance=..0.7,scores={PathStep=9}] PathStep 10
teleport @s[scores={PathStep=10}] ~ ~ ~ facing 665 102 22
tag @s[x=665.5,y=102,z=22.5,distance=..0.7] add remove_from_existence
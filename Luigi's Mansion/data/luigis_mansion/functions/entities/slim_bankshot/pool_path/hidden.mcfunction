execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 676 102 -14
scoreboard players set @s[x=676.5,y=102.5,z=-13.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 675 102 -10
scoreboard players set @s[x=675.5,y=102.5,z=-9.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 677 102 -7
scoreboard players set @s[x=677.5,y=102.5,z=-6.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 680 102 -6
scoreboard players set @s[x=680.5,y=102.5,z=-5.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 682 102 -7
scoreboard players set @s[x=682.5,y=102.5,z=-6.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 683 102 -10
scoreboard players set @s[x=683.5,y=102.5,z=-9.5,distance=..0.7,scores={PathStep=6}] PathStep 7
teleport @s[scores={PathStep=7}] ~ ~ ~ facing 681 102 -14
scoreboard players set @s[x=681.5,y=102.5,z=-13.5,distance=..0.7,scores={PathStep=7}] PathStep 8
teleport @s[scores={PathStep=8}] ~ ~ ~ facing 678 102 -15
scoreboard players add @s[x=678.5,y=102.5,z=-14.5,distance=..0.7,scores={PathStep=8..100}] PathStep 1
teleport @s[scores={PathStep=9}] ~ ~ ~ facing 679 102 -12
execute if entity @s[scores={PathStep=40}] positioned 679 103 -12 rotated -15 0 run function luigis_mansion:spawn_entities/ball/billiards/white
execute at @s[scores={PathStep=..8}] run function luigis_mansion:entities/slim_bankshot/move_forward
execute if entity @s[scores={PathStep=90}] run tag @e[tag=billiards_ball,tag=white,limit=1] add move
execute if entity @s[scores={PathStep=98}] run tag @e[tag=billiards_ball,tag=!white,limit=3] add vacuumable
scoreboard players set @s[scores={PathStep=101}] PathStep 1
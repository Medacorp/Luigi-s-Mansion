execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 678 11.6 -66
scoreboard players set @s[x=678.5,y=11.6,z=-65.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 677 11.6 -62
scoreboard players set @s[x=677.5,y=11.6,z=-61.5,distance=..0.7,scores={PathStep=2}] PathStep 3
teleport @s[scores={PathStep=3}] ~ ~ ~ facing 679 11.6 -59
scoreboard players set @s[x=679.5,y=11.6,z=-58.5,distance=..0.7,scores={PathStep=3}] PathStep 4
teleport @s[scores={PathStep=4}] ~ ~ ~ facing 682 11.6 -58
scoreboard players set @s[x=682.5,y=11.6,z=-57.5,distance=..0.7,scores={PathStep=4}] PathStep 5
teleport @s[scores={PathStep=5}] ~ ~ ~ facing 684 11.6 -59
scoreboard players set @s[x=684.5,y=11.6,z=-58.5,distance=..0.7,scores={PathStep=5}] PathStep 6
teleport @s[scores={PathStep=6}] ~ ~ ~ facing 685 11.6 -62
scoreboard players set @s[x=685.5,y=11.6,z=-61.5,distance=..0.7,scores={PathStep=6}] PathStep 7
teleport @s[scores={PathStep=7}] ~ ~ ~ facing 683 11.6 -66
scoreboard players set @s[x=683.5,y=11.6,z=-65.5,distance=..0.7,scores={PathStep=7}] PathStep 8
teleport @s[scores={PathStep=8}] ~ ~ ~ facing 680 11.6 -67
scoreboard players add @s[x=680.5,y=11.6,z=-66.5,distance=..0.7,scores={PathStep=8..100}] PathStep 1
teleport @s[scores={PathStep=9}] ~ ~ ~ facing 681 11.6 -64
scoreboard players set @s[scores={PathStep=40}] AnimationProg 0
execute if entity @s[scores={PathStep=40}] positioned 681 10.8125 -64 unless entity @e[tag=billiards_ball,distance=..0.7,limit=1] positioned ~ ~1.1875 ~ rotated -15 0 run function luigis_mansion:spawn_entities/ball/billiards/white
execute at @s[scores={PathStep=..8}] run function luigis_mansion:entities/slim_bankshot/move_forward
execute if entity @s[scores={PathStep=80}] run playsound luigis_mansion:entity.slim_bankshot.shoot hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={PathStep=80}] run tag @e[tag=billiards_ball,tag=white,limit=1] add move
scoreboard players set @s[scores={PathStep=101}] PathStep 1

execute unless entity @s[scores={PathStep=40..99}] run function luigis_mansion:animations/slim_bankshot/move
execute if entity @s[scores={PathStep=40..99}] run function luigis_mansion:animations/slim_bankshot/play
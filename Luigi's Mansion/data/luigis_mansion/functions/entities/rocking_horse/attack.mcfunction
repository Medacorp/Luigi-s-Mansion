data modify entity @s Pose.Head[0] set value 0.0f
scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=18}] ActionTime 2
teleport @s[scores={ActionTime=1}] ~ ~ ~ -180 10
teleport @s[tag=big,tag=!zigzag_left,scores={ActionTime=2..5}] ~ ~ ~ ~10 ~
teleport @s[tag=big,tag=!zigzag_left,scores={ActionTime=6..13}] ~ ~ ~ ~-10 ~
teleport @s[tag=big,tag=!zigzag_left,scores={ActionTime=14..17}] ~ ~ ~ ~10 ~
teleport @s[tag=big,tag=zigzag_left,scores={ActionTime=2..5}] ~ ~ ~ ~-10 ~
teleport @s[tag=big,tag=zigzag_left,scores={ActionTime=6..13}] ~ ~ ~ ~10 ~
teleport @s[tag=big,tag=zigzag_left,scores={ActionTime=14..17}] ~ ~ ~ ~-10 ~
execute if entity @s[scores={ActionTime=2..},tag=!big,tag=!fast] run scoreboard players set #temp Move 8
execute if entity @s[scores={ActionTime=2..},tag=big,tag=!fast] run scoreboard players set #temp Move 14
execute if entity @s[scores={ActionTime=2..},tag=!big,tag=fast] run scoreboard players set #temp Move 10
execute if entity @s[scores={ActionTime=2..},tag=big,tag=fast] run scoreboard players set #temp Move 20
execute at @s[scores={ActionTime=2..}] run function luigis_mansion:entities/ghost/move_forward
data modify entity @s Pose.Head[0] set value 0.0f
scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=18}] ActionTime 2
teleport @s[tag=zigzag_right,scores={ActionTime=2..5}] ~ ~ ~ ~10 ~
teleport @s[tag=zigzag_right,scores={ActionTime=6..13}] ~ ~ ~ ~-10 ~
teleport @s[tag=zigzag_right,scores={ActionTime=14..17}] ~ ~ ~ ~10 ~
teleport @s[tag=zigzag_left,scores={ActionTime=2..5}] ~ ~ ~ ~-10 ~
teleport @s[tag=zigzag_left,scores={ActionTime=6..13}] ~ ~ ~ ~10 ~
teleport @s[tag=zigzag_left,scores={ActionTime=14..17}] ~ ~ ~ ~-10 ~
execute if entity @s[scores={ActionTime=2..},tag=!big,tag=!fast] run scoreboard players set #temp Move 40
execute if entity @s[scores={ActionTime=2..},tag=!big,tag=fast] run scoreboard players set #temp Move 50
execute if entity @s[scores={ActionTime=2..},tag=big,tag=!fast] run scoreboard players set #temp Move 70
execute if entity @s[scores={ActionTime=2..},tag=big,tag=fast] run scoreboard players set #temp Move 100
execute if entity @s[scores={Sound=0}] run playsound luigis_mansion:entity.rocking_horse.charge_battle hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 40
execute at @s[scores={ActionTime=2..}] run function luigis_mansion:entities/ghost/move_forward
execute at @s[scores={ActionTime=2..}] if score #temp Move matches -1 run teleport @s ~ ~ ~ ~ 0
scoreboard players add @s AnimationProgress 1
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProgress=1}] Pose.Head[0] set value -10.0f
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=21..60}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=61..80}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=30}] run playsound luigis_mansion:furniture.rocking_chair.move_backward block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=70}] run playsound luigis_mansion:furniture.rocking_chair.move_forward block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0
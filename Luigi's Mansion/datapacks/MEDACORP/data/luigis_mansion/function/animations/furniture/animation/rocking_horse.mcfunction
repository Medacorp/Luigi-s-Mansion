scoreboard players add @s AnimationProgress 1
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProgress=1}] Pose.Head[0] set value 0.0f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=11..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=15}] run playsound luigis_mansion:furniture.rocking_horse.move_backward hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=35}] run playsound luigis_mansion:furniture.rocking_horse.move_forward hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0
tag @s[scores={AnimationProgress=1}] add was_shaking
tag @s[scores={AnimationProgress=0}] remove was_shaking
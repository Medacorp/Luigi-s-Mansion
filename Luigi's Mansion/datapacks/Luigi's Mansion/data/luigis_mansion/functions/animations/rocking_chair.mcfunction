scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[-10.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=21..60}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=61..80}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=30}] run playsound luigis_mansion:furniture.rocking_chair.move_backward hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=70}] run playsound luigis_mansion:furniture.rocking_chair.move_forward hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProg=80}] AnimationProg 0
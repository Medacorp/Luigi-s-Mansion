scoreboard players add @s AnimationProgress 1
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProgress=1}] Pose.Head[0] set value 0.0f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=4..7}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=9..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=3}] run playsound luigis_mansion:furniture.rocking_horse.rock block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=8}] run playsound luigis_mansion:furniture.rocking_horse.rock block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0
data remove entity @s[scores={AnimationProgress=0},tag=!was_shaking] data.animation
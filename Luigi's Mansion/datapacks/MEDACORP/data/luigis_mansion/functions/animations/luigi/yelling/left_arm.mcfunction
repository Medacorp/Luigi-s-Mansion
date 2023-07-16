scoreboard players add @s AnimationProgress 1
execute if score #mirrored Selected matches 0 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if score #mirrored Selected matches 0 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 11
execute if entity @s[scores={AnimationProgress=31..40}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 11
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..10}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=11..30}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=31..40}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0
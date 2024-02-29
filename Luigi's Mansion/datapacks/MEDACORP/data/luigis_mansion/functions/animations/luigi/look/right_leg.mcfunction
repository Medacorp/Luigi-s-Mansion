scoreboard players operation @s AnimationProgress = @a[tag=this_luigi,limit=1] IdleTime
scoreboard players add @s AnimationProgress 41
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=21}] {Pose:{Head:[-10.0f,0.0f,5.0f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=21},tag=flipped_gravity] {Pose:{Head:[-10.0f,0.0f,-175.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=21}] {Pose:{Head:[10.0f,0.0f,5.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=21},tag=flipped_gravity] {Pose:{Head:[10.0f,0.0f,-175.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..20}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=1..20}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[2] 100
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[2] float 0.01 run scoreboard players add #temp Time 25
scoreboard players reset #temp Time
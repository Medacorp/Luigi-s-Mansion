scoreboard players operation @s AnimationProgress = @a[tag=this_luigi,limit=1] IdleTime
scoreboard players add @s AnimationProgress 41
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
data merge entity @s[scores={AnimationProgress=21}] {Pose:{Head:[0.0f,-10.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=21},tag=flipped_gravity] {Pose:{Head:[0.0f,-10.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 0
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[2] 10
execute if entity @s[scores={AnimationProgress=21..30}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
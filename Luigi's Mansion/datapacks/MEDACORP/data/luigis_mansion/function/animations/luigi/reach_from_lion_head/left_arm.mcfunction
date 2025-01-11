scoreboard players add @s AnimationProgress 1
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-80.0f,0.0f,-10.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-80.0f,0.0f,170.0f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-110.0f,-30.0f,-10.0f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-110.0f,-30.0f,170.0f]}}
scoreboard players operation #temp AnimationProgress = @s AnimationProgress
scoreboard players operation #temp AnimationProgress %= #4 Constants
execute store result score #temp Time run data get entity @s Pose.Head[0] 4
execute unless score #mirrored Selected matches 1 unless score #temp AnimationProgress matches 1..2 store result entity @s Pose.Head[0] float 0.25 run scoreboard players add #temp Time 5
execute unless score #mirrored Selected matches 1 if score #temp AnimationProgress matches 1..2 store result entity @s Pose.Head[0] float 0.25 run scoreboard players remove #temp Time 1
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
scoreboard players reset #temp Time
scoreboard players reset #temp AnimationProgress
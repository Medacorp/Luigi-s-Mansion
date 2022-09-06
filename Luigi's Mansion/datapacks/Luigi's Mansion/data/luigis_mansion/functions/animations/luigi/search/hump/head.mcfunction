scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[-20.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 15
execute if entity @s[scores={AnimationProg=2}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 10
execute if entity @s[scores={AnimationProg=3}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 5
execute if entity @s[scores={AnimationProg=4}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 10
execute if entity @s[scores={AnimationProg=5}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 15
execute if entity @s[scores={AnimationProg=6..9}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 20
execute if entity @s[scores={AnimationProg=10}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 15
execute if entity @s[scores={AnimationProg=11}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 10
execute if entity @s[scores={AnimationProg=12}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 5
execute if entity @s[scores={AnimationProg=13}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 10
execute if entity @s[scores={AnimationProg=14}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 15
execute if entity @s[scores={AnimationProg=15}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 20
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProg=15}] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=15},tag=flipped_gravity] {Pose:{Head:[-20.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProg=15..}] AnimationProg 0
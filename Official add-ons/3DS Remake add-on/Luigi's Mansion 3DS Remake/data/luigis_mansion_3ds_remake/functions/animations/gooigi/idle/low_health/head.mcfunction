scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[50.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[50.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 50
execute if entity @s[scores={AnimationProg=2}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 49
execute if entity @s[scores={AnimationProg=3}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 48
execute if entity @s[scores={AnimationProg=4}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 47
execute if entity @s[scores={AnimationProg=5}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 46
execute if entity @s[scores={AnimationProg=6}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 45
execute if entity @s[scores={AnimationProg=7}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 44
execute if entity @s[scores={AnimationProg=8}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 43
execute if entity @s[scores={AnimationProg=9}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 42
execute if entity @s[scores={AnimationProg=10}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 41
execute if entity @s[scores={AnimationProg=11}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 40
execute if entity @s[scores={AnimationProg=12}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 41
execute if entity @s[scores={AnimationProg=13}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 42
execute if entity @s[scores={AnimationProg=14}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 43
execute if entity @s[scores={AnimationProg=15}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 44
execute if entity @s[scores={AnimationProg=16}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 45
execute if entity @s[scores={AnimationProg=17}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 46
execute if entity @s[scores={AnimationProg=18}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 47
execute if entity @s[scores={AnimationProg=19}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 48
execute if entity @s[scores={AnimationProg=20}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 49
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0
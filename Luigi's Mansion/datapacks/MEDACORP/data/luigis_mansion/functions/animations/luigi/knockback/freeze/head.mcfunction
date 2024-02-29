execute unless entity @s[scores={AnimationProgress=1..}] run scoreboard players add @s AnimationProgress 1
execute unless entity @a[tag=this_luigi,limit=1,scores={IdleTime=..-10}] run scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,20.0f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-160.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,-20.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,160.0f]}}
data merge entity @s[scores={AnimationProgress=10}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=10},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0
tag @s add dark_room_head
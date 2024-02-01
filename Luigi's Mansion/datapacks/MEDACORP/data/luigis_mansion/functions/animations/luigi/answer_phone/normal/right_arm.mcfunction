scoreboard players operation @s AnimationProgress = @a[tag=this_luigi,limit=1] IdleTime
scoreboard players add @s AnimationProgress 41
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
data merge entity @s[scores={AnimationProgress=21}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=21},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute at @s rotated ~ 0 run teleport @s[scores={AnimationProgress=17..},tag=!flipped_gravity,nbt=!{Small:1b}] ^ ^-0.2 ^-0.2
execute at @s rotated ~ 0 run teleport @s[scores={AnimationProgress=17..},tag=!flipped_gravity,nbt={Small:1b}] ^ ^-0.1 ^-0.1
execute at @s rotated ~ 0 run teleport @s[scores={AnimationProgress=17..},tag=flipped_gravity,nbt=!{Small:1b}] ^ ^0.2 ^-0.2
execute at @s rotated ~ 0 run teleport @s[scores={AnimationProgress=17..},tag=flipped_gravity,nbt={Small:1b}] ^ ^0.1 ^-0.1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 20
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=11..16}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 14
execute if entity @s[scores={AnimationProgress=15..19}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 16
scoreboard players reset #temp Time
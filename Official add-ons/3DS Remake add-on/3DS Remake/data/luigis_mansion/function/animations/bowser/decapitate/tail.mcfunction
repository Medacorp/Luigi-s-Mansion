scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=51}] ^ ^-0.133 ^
teleport @s[scores={AnimationProgress=52}] ^ ^-0.267 ^
teleport @s[scores={AnimationProgress=53}] ^ ^-0.4 ^
teleport @s[scores={AnimationProgress=54}] ^ ^-0.533 ^
teleport @s[scores={AnimationProgress=55}] ^ ^-0.667 ^
teleport @s[scores={AnimationProgress=56}] ^ ^-0.8 ^
teleport @s[scores={AnimationProgress=57}] ^ ^-0.933 ^
teleport @s[scores={AnimationProgress=58}] ^ ^-1.067 ^
teleport @s[scores={AnimationProgress=59}] ^ ^-1.2 ^
teleport @s[scores={AnimationProgress=60}] ^ ^-1.333 ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=21..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=31..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=51..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0
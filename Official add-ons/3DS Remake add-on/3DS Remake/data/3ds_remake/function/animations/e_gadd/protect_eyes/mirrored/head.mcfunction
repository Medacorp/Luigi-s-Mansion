scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..2}] ^ ^-0.01 ^-0.2
teleport @s[scores={AnimationProgress=3..6}] ^ ^-0.01 ^-0.2
teleport @s[scores={AnimationProgress=7..14}] ^ ^-0.02 ^-0.2
teleport @s[scores={AnimationProgress=15..18}] ^ ^-0.01 ^-0.2
teleport @s[scores={AnimationProgress=19..24}] ^ ^-0.01 ^-0.2
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,-50.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=3..10}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=11..18}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=20..21}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=23..24}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 2
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0
scoreboard players reset #temp Time
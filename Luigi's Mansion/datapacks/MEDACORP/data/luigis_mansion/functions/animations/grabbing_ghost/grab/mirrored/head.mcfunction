scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] positioned ^ ^ ^0.65 rotated ~36 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=2}] positioned ^ ^ ^0.65 rotated ~72 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=3}] positioned ^ ^ ^0.65 rotated ~108 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=4}] positioned ^ ^ ^0.65 rotated ~144 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=5}] positioned ^ ^ ^0.65 rotated ~180 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=6}] positioned ^ ^ ^0.65 rotated ~216 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=7}] positioned ^ ^ ^0.65 rotated ~252 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=8}] positioned ^ ^ ^0.65 rotated ~288 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=9}] positioned ^ ^ ^0.65 rotated ~324 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=11}] positioned ^ ^ ^0.65 rotated ~36 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=12}] positioned ^ ^ ^0.65 rotated ~72 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=13}] positioned ^ ^ ^0.65 rotated ~108 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=14}] positioned ^ ^ ^0.65 rotated ~144 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=15}] positioned ^ ^ ^0.65 rotated ~180 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=16}] positioned ^ ^ ^0.65 rotated ~216 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=17}] positioned ^ ^ ^0.65 rotated ~252 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=18}] positioned ^ ^ ^0.65 rotated ~288 0 run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={AnimationProgress=19}] positioned ^ ^ ^0.65 rotated ~324 0 run teleport @s ^ ^ ^-0.65 ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..18}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
scoreboard players reset #temp Time
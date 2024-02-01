scoreboard players add @s AnimationProgress 1
teleport @s ^0.55 ^ ^
execute at @s[scores={AnimationProgress=256}] run teleport @s ^ ^-0.05 ^
execute at @s[scores={AnimationProgress=257}] run teleport @s ^ ^-0.1 ^
execute at @s[scores={AnimationProgress=258}] run teleport @s ^ ^-0.15 ^
execute at @s[scores={AnimationProgress=259}] run teleport @s ^ ^-0.2 ^
execute at @s[scores={AnimationProgress=260}] run teleport @s ^ ^-0.25 ^
execute at @s[scores={AnimationProgress=261}] run teleport @s ^ ^-0.3 ^
execute at @s[scores={AnimationProgress=262}] run teleport @s ^ ^-0.35 ^
execute at @s[scores={AnimationProgress=263}] run teleport @s ^ ^-0.4 ^
execute at @s[scores={AnimationProgress=264}] run teleport @s ^ ^-0.45 ^
execute at @s[scores={AnimationProgress=265..299}] run teleport @s ^ ^-0.5 ^
execute at @s[scores={AnimationProgress=300}] run teleport @s ^ ^-0.45 ^
execute at @s[scores={AnimationProgress=301}] run teleport @s ^ ^-0.4 ^
execute at @s[scores={AnimationProgress=302}] run teleport @s ^ ^-0.35 ^
execute at @s[scores={AnimationProgress=303}] run teleport @s ^ ^-0.3 ^
execute at @s[scores={AnimationProgress=304}] run teleport @s ^ ^-0.25 ^
execute at @s[scores={AnimationProgress=305}] run teleport @s ^ ^-0.2 ^
execute at @s[scores={AnimationProgress=306}] run teleport @s ^ ^-0.15 ^
execute at @s[scores={AnimationProgress=307}] run teleport @s ^ ^-0.1 ^
execute at @s[scores={AnimationProgress=308}] run teleport @s ^ ^-0.05 ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=81..85}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=86..95}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=96..105}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=106..115}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=116..125}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=126..135}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=136..140}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=186..190}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=191..195}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=256..260}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=261..265}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=301..305}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=306..315}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=316..325}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=326..335}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=336..340}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=331..340}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=340..}] AnimationProgress 0
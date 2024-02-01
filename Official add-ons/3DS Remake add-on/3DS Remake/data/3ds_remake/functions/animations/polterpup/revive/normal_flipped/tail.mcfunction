scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=196}] run teleport @s ^ ^ ^0.05
execute at @s[scores={AnimationProgress=197}] run teleport @s ^ ^ ^0.1
execute at @s[scores={AnimationProgress=198}] run teleport @s ^ ^ ^0.15
execute at @s[scores={AnimationProgress=199}] run teleport @s ^ ^ ^0.2
execute at @s[scores={AnimationProgress=200..250}] run teleport @s ^ ^ ^0.25
execute at @s[scores={AnimationProgress=251}] run teleport @s ^ ^ ^0.2
execute at @s[scores={AnimationProgress=252}] run teleport @s ^ ^ ^0.15
execute at @s[scores={AnimationProgress=253}] run teleport @s ^ ^ ^0.1
execute at @s[scores={AnimationProgress=254}] run teleport @s ^ ^ ^0.05
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
execute if entity @s[scores={AnimationProgress=21..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=71..80}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=331..340}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=81..85}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=86..95}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=96..105}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=106..115}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=116..125}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=126..135}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=136..145}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=146..155}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=156..165}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=166..175}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=176..180}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=340..}] AnimationProgress 0
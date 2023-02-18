scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[0.0f,20.0f,-160.0f],LeftArm:[0.0f,20.0f,110.0f],Head:[0.0f,0.0f,140.0f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,limit=1] {Pose:{RightArm:[-20.0f,0.0f,-100.0f],LeftArm:[20.0f,0.0f,30.0f],Head:[-10.0f,20.0f,25.0f]}}
execute if entity @s[scores={AnimationProgress=1..2}] run teleport @e[tag=this_model,limit=1] ~ ~-0.6 ~
execute if entity @s[scores={AnimationProgress=3..4}] run teleport @e[tag=this_model,limit=1] ~ ~-0.5 ~
execute if entity @s[scores={AnimationProgress=5..6}] run teleport @e[tag=this_model,limit=1] ~ ~-0.4 ~
execute if entity @s[scores={AnimationProgress=7..8}] run teleport @e[tag=this_model,limit=1] ~ ~-0.3 ~
execute if entity @s[scores={AnimationProgress=9..10}] run teleport @e[tag=this_model,limit=1] ~ ~-0.2 ~
execute if entity @s[scores={AnimationProgress=11..12}] run teleport @e[tag=this_model,limit=1] ~ ~-0.1 ~
execute if entity @s[scores={AnimationProgress=13..14}] run teleport @e[tag=this_model,limit=1] ~ ~ ~
execute if entity @s[scores={AnimationProgress=15..16}] run teleport @e[tag=this_model,limit=1] ~ ~0.1 ~
execute if entity @s[scores={AnimationProgress=17..18}] run teleport @e[tag=this_model,limit=1] ~ ~0.2 ~
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
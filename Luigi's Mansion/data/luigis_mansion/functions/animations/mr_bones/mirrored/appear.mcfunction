scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{LeftArm:[0.0f,-20.0f,160.0f],RightArm:[0.0f,-20.0f,-110.0f],Head:[0.0f,0.0f,-140.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_mr_bones_body,limit=1] {Pose:{LeftArm:[-20.0f,0.0f,100.0f],RightArm:[20.0f,0.0f,-30.0f],Head:[-10.0f,-20.0f,-25.0f]}}
execute if entity @s[scores={AnimationProg=1..2}] run teleport @e[tag=this_mr_bones_body,limit=1] ~ ~-0.6 ~
execute if entity @s[scores={AnimationProg=3..4}] run teleport @e[tag=this_mr_bones_body,limit=1] ~ ~-0.5 ~
execute if entity @s[scores={AnimationProg=5..6}] run teleport @e[tag=this_mr_bones_body,limit=1] ~ ~-0.4 ~
execute if entity @s[scores={AnimationProg=7..8}] run teleport @e[tag=this_mr_bones_body,limit=1] ~ ~-0.3 ~
execute if entity @s[scores={AnimationProg=9..10}] run teleport @e[tag=this_mr_bones_body,limit=1] ~ ~-0.2 ~
execute if entity @s[scores={AnimationProg=11..12}] run teleport @e[tag=this_mr_bones_body,limit=1] ~ ~-0.1 ~
execute if entity @s[scores={AnimationProg=13..14}] run teleport @e[tag=this_mr_bones_body,limit=1] ~ ~ ~
execute if entity @s[scores={AnimationProg=15..16}] run teleport @e[tag=this_mr_bones_body,limit=1] ~ ~0.1 ~
execute if entity @s[scores={AnimationProg=17..18}] run teleport @e[tag=this_mr_bones_body,limit=1] ~ ~0.2 ~
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0
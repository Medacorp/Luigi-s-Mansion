execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
data modify entity @s HandItems[0].tag.CustomModelData set value 15
data modify entity @s HandItems[1].tag.CustomModelData set value 15
data merge entity @s {Pose:{RightArm:[180.0f,0.0f,0.01f],LeftArm:[180.0f,0.0f,0.01f],Head:[180.0f,0.0f,0.01f]}}
tag @s remove attack
tag @s remove turn_back
tag @s remove returned
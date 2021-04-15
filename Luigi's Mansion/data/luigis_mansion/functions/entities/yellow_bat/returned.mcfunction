execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
scoreboard players set @s FlyTime 0
data merge entity @s {HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:84}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:84}}],Pose:{RightArm:[180.0f,0.0f,0.01f],LeftArm:[180.0f,0.0f,0.01f],Head:[180.0f,0.0f,0.01f]}}
tag @s remove attack
tag @s remove turn_back
tag @s remove returned
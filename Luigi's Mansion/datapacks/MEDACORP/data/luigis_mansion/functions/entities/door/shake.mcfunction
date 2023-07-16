tag @s add was_shaking
tag @s[tag=!in_vacuum] remove was_shaking
tag @s remove in_vacuum

execute unless entity @s[scores={PoltergustSound=1..}] run scoreboard players add @s PoltergustSound 3
execute if entity @s[scores={PoltergustSound=3}] run playsound luigis_mansion:furniture.search.heavy_generic block @a[tag=same_room] ~ ~ ~ 1

execute as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/shake
execute if entity @s[tag=!was_shaking] run scoreboard players set @e[tag=this_model,limit=1] AnimationProgress 0
execute if entity @s[tag=!was_shaking] as @e[tag=this_model,limit=1] run data merge entity @s {Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f]}}
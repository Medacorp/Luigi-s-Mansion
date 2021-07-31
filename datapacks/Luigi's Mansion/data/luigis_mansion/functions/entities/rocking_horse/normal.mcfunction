execute if entity @s[tag=in_vacuum] run function luigis_mansion:animations/rocking_horse
data modify entity @s[tag=!in_vacuum] Pose.Head[0] set value 0.0f
scoreboard players set @s[tag=!in_vacuum] AnimationProg 0
tag @s remove in_vacuum
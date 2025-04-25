scoreboard players set @s[tag=!was_low_health] ActionTime 0
scoreboard players add @s ActionTime 1
execute unless score #mirrored Selected matches 1 run data modify entity @s[scores={ActionTime=1}] Pose.Head[2] set value 0.001f
execute unless score #mirrored Selected matches 1 run data modify entity @s[scores={ActionTime=1},tag=flipped_gravity] Pose.Head[2] set value -180.0f
execute if score #mirrored Selected matches 1 run data modify entity @s[scores={ActionTime=1}] Pose.Head[2] set value -40.001f
execute if score #mirrored Selected matches 1 run data modify entity @s[scores={ActionTime=1},tag=flipped_gravity] Pose.Head[2] set value 140.0f
execute store result score #temp Time run data get entity @s Pose.Head[2] 4
execute if entity @s[scores={ActionTime=6..25}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=36..55}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players remove #temp Time 1
scoreboard players set @s[scores={ActionTime=60..}] ActionTime 0
scoreboard players reset #temp Time
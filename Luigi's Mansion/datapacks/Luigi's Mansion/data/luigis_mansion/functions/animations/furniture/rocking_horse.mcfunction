scoreboard players add @s Dialog 1
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
data modify entity @s[scores={Dialog=1}] Pose.Head[0] set value 0.0f
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={Dialog=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={Dialog=11..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={Dialog=31..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
execute if entity @s[scores={Dialog=15}] run playsound luigis_mansion:furniture.rocking_horse.move_backward hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=35}] run playsound luigis_mansion:furniture.rocking_horse.move_forward hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=40}] Dialog 0
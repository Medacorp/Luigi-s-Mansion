scoreboard players add @s AnimationProgress 1
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:furniture.door.exterior block @a[tag=same_room] ~ ~ ~ 1
scoreboard players reset #temp Time
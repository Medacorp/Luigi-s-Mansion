scoreboard players add @s AnimationProgress 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=3..4}] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time += @s FurnitureVacuum
execute if entity @s[scores={AnimationProgress=7..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time -= @s FurnitureVacuum
execute if score #temp Time matches 46.. store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 45
execute if score #temp Time matches ..-46 store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time -45
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.Head[2] float 1 run scoreboard players operation #temp Time -= @s FurnitureVacuum
execute if entity @s[scores={AnimationProgress=5..6}] store result entity @s Pose.Head[2] float 1 run scoreboard players operation #temp Time += @s FurnitureVacuum
execute if score #temp Time matches 46.. store result entity @s Pose.Head[2] float 1 run scoreboard players set #temp Time 45
execute if score #temp Time matches ..-46 store result entity @s Pose.Head[2] float 1 run scoreboard players set #temp Time -45
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0
data modify entity @s[scores={FurnitureVacuum=1}] Pose set from entity @s data.default_orientation
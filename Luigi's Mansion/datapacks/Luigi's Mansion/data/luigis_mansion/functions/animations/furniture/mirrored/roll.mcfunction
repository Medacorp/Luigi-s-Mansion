scoreboard players add @s ActionTime 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={ActionTime=3..4}] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time += @s FurnitureSearch
execute if entity @s[scores={ActionTime=7..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time -= @s FurnitureSearch
execute if score #temp Time matches 46.. store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 45
execute if score #temp Time matches ..-46 store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time -45
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={ActionTime=1..2}] store result entity @s Pose.Head[2] float 1 run scoreboard players operation #temp Time -= @s FurnitureSearch
execute if entity @s[scores={ActionTime=5..6}] store result entity @s Pose.Head[2] float 1 run scoreboard players operation #temp Time += @s FurnitureSearch
execute if score #temp Time matches 46.. store result entity @s Pose.Head[2] float 1 run scoreboard players set #temp Time 45
execute if score #temp Time matches ..-46 store result entity @s Pose.Head[2] float 1 run scoreboard players set #temp Time -45
scoreboard players reset #temp Time
scoreboard players set @s[scores={ActionTime=8}] ActionTime 0
scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=3}] run scoreboard players set @s AnimationRotationX 0
execute if entity @s[scores={AnimationProgress=7}] run scoreboard players set @s AnimationRotationX 0
execute if entity @s[scores={AnimationProgress=3..4}] run scoreboard players operation @s AnimationRotationX += @s FurnitureVacuum
execute if entity @s[scores={AnimationProgress=7..8}] run scoreboard players operation @s AnimationRotationX -= @s FurnitureVacuum
execute if score @s AnimationRotationX matches 451.. run scoreboard players set @s AnimationRotationX 450
execute if score @s AnimationRotationX matches ..-451 run scoreboard players set @s AnimationRotationX -450
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players set @s AnimationRotationZ 0
execute if entity @s[scores={AnimationProgress=5}] run scoreboard players set @s AnimationRotationZ 0
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players operation @s AnimationRotationZ -= @s FurnitureVacuum
execute if entity @s[scores={AnimationProgress=5..6}] run scoreboard players operation @s AnimationRotationZ += @s FurnitureVacuum
execute if score @s AnimationRotationZ matches 451.. run scoreboard players set @s AnimationRotationZ 450
execute if score @s AnimationRotationZ matches ..-451 run scoreboard players set @s AnimationRotationZ -450
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0
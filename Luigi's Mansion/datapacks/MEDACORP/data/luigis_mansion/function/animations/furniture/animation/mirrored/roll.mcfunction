scoreboard players add @s AnimationProgress 1
scoreboard players operation #temp Time = @s FurnitureVacuum
scoreboard players operation #temp Time *= #4 Constants
scoreboard players set @s[scores={AnimationProgress=3}] AnimationRotationX 0
scoreboard players set @s[scores={AnimationProgress=7}] AnimationRotationX 0
scoreboard players operation @s[scores={AnimationProgress=3..4}] AnimationRotationX += #temp Time
scoreboard players operation @s[scores={AnimationProgress=7..8}] AnimationRotationX -= #temp Time
execute if score @s AnimationRotationX matches 451.. run scoreboard players set @s AnimationRotationX 450
execute if score @s AnimationRotationX matches ..-451 run scoreboard players set @s AnimationRotationX -450
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 0
scoreboard players set @s[scores={AnimationProgress=5}] AnimationRotationZ 0
scoreboard players operation @s[scores={AnimationProgress=1..2}] AnimationRotationZ -= #temp Time
scoreboard players operation @s[scores={AnimationProgress=5..6}] AnimationRotationZ += #temp Time
execute if score @s AnimationRotationZ matches 451.. run scoreboard players set @s AnimationRotationZ 450
execute if score @s AnimationRotationZ matches ..-451 run scoreboard players set @s AnimationRotationZ -450
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0
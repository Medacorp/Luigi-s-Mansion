scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players set @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=2}] run scoreboard players set @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=3}] run scoreboard players set @s AnimationRotationX 150
execute if entity @s[scores={AnimationProgress=4}] run scoreboard players set @s AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=5}] run scoreboard players set @s AnimationRotationX 250
execute if entity @s[scores={AnimationProgress=6}] run scoreboard players set @s AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=7}] run scoreboard players set @s AnimationRotationX 150
execute if entity @s[scores={AnimationProgress=8}] run scoreboard players set @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=9}] run scoreboard players set @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=10..}] run scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
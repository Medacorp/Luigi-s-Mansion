scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 350
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players set @s AnimationRotationX 330
execute if entity @s[scores={AnimationProgress=2}] run scoreboard players set @s AnimationRotationX 310
execute if entity @s[scores={AnimationProgress=3}] run scoreboard players set @s AnimationRotationX 290
execute if entity @s[scores={AnimationProgress=4}] run scoreboard players set @s AnimationRotationX 270
execute if entity @s[scores={AnimationProgress=5}] run scoreboard players set @s AnimationRotationX 250
execute if entity @s[scores={AnimationProgress=6}] run scoreboard players set @s AnimationRotationX 270
execute if entity @s[scores={AnimationProgress=7}] run scoreboard players set @s AnimationRotationX 290
execute if entity @s[scores={AnimationProgress=8}] run scoreboard players set @s AnimationRotationX 310
execute if entity @s[scores={AnimationProgress=9}] run scoreboard players set @s AnimationRotationX 330
execute if entity @s[scores={AnimationProgress=10}] run scoreboard players set @s AnimationRotationX 350
scoreboard players set @s[scores={AnimationProgress=10}] AnimationRotationX 350
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0
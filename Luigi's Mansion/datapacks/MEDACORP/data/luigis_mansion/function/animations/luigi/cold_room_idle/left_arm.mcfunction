scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -1800
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 600
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ -1200
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 700
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ -1100
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=3..4}] run scoreboard players remove @s AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0
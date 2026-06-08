scoreboard players add @s AnimationProgress 1
data remove entity @s[scores={AnimationProgress=1..},tag=held_item] equipment.head
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -800
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1100
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 300
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 100
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players operation #temp AnimationProgress = @s AnimationProgress
scoreboard players operation #temp AnimationProgress %= #4 Constants
execute if score #mirrored Selected matches 1 unless score #temp AnimationProgress matches 1..2 run scoreboard players add @s AnimationRotationX 2
execute if score #mirrored Selected matches 1 if score #temp AnimationProgress matches 1..2 run scoreboard players remove @s AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
scoreboard players reset #temp AnimationProgress
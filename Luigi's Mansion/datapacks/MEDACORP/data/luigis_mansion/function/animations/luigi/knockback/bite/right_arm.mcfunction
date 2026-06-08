scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -400
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1400
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -200
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1600
execute if entity @s[scores={AnimationProgress=1..8}] run scoreboard players add @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=9..16}] run scoreboard players remove @s AnimationRotationZ 40
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
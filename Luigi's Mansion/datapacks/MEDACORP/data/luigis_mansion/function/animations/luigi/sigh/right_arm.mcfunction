scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..5}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 120
execute if entity @s[scores={AnimationProgress=6..10}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=16..20}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=1..5}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 140
execute if entity @s[scores={AnimationProgress=16..20}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 140
execute if entity @s[scores={AnimationProgress=1..10}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=11..20}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
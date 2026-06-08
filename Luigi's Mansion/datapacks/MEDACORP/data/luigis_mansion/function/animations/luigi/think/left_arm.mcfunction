scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=41..45}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=46..50}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=51..55}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=56..60}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=1..10}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=31..40}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=1..10}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=31..40}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 50
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0
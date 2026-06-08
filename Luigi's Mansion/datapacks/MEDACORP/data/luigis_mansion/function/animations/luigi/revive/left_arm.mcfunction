scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..10}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=31..40}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=1..10}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=31..40}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=1..5}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=6..10}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=11..15}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=16..20}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=21..25}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=26..30}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=31..35}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=36..40}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 40
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0
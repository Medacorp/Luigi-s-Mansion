scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 40
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationX 40
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationZ 10
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationZ 10
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationY 40
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationY 40
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=11..15}] AnimationRotationY 40
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationY 40
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=21..25}] AnimationRotationY 40
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=26..30}] AnimationRotationY 40
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=31..35}] AnimationRotationY 40
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=36..40}] AnimationRotationY 40
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0
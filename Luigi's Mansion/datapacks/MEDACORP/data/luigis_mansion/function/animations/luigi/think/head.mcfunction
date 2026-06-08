scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=1..}] run scoreboard players set @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=1..10}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=11..20}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=21..30}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=31..40}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=1..10}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=11..20}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=21..30}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=31..40}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0
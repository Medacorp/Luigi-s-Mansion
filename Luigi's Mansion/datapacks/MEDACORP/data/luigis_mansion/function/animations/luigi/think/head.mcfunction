scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=1..}] AnimationRotationX 100
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationZ 10
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationZ 10
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=21..30}] AnimationRotationZ 10
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationZ 10
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationZ 10
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationZ 10
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=21..30}] AnimationRotationZ 10
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0
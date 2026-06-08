scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..4}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=5..8}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=9..12}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=13..16}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=17..20}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=21..24}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=25..28}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=29..32}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=33..36}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=37..40}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0
scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -300
execute if entity @s[scores={AnimationProgress=1..8}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=9..16}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=1..4}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 30
execute if entity @s[scores={AnimationProgress=5..8}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 30
execute if entity @s[scores={AnimationProgress=9..12}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 30
execute if entity @s[scores={AnimationProgress=13..16}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 30
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -300
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..8}] AnimationRotationX 20
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=9..16}] AnimationRotationX 20
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..4}] AnimationRotationZ 30
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=5..8}] AnimationRotationZ 30
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=9..12}] AnimationRotationZ 30
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=13..16}] AnimationRotationZ 30
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
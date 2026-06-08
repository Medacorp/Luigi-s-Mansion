scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -1800
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -800
scoreboard players set @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1000
execute if entity @s[scores={AnimationProgress=1..4}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=5..12}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=13..16}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=1..4}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=5..12}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=13..16}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=16}] AnimationRotationX 300
scoreboard players set @s[scores={AnimationProgress=16}] AnimationRotationY -1800
scoreboard players set @s[scores={AnimationProgress=16}] AnimationRotationZ -800
scoreboard players set @s[scores={AnimationProgress=16},tag=flipped_gravity] AnimationRotationZ 1000
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
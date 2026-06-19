scoreboard players add @s AnimationProgress 1
data remove entity @s[scores={AnimationProgress=1..},tag=held_item] item
teleport @s[scores={AnimationProgress=25..35}] ^ ^ ^0.2
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=21..30}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationX 30
scoreboard players remove @s[scores={AnimationProgress=61..70}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=71..80}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=21..30}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=61..70}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=71..80}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=71..80}] AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=81}] AnimationRotationX -800
scoreboard players set @s[scores={AnimationProgress=81}] AnimationRotationZ -100
scoreboard players set @s[scores={AnimationProgress=81},tag=flipped_gravity] AnimationRotationZ 1700
scoreboard players set @s[scores={AnimationProgress=160}] AnimationProgress 80
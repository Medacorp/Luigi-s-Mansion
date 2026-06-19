scoreboard players add @s AnimationProgress 1
data remove entity @s[scores={AnimationProgress=1..},tag=held_item] item
teleport @s[scores={AnimationProgress=45..55}] ^ ^ ^0.2
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=41..50}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=51..60}] AnimationRotationX 30
scoreboard players remove @s[scores={AnimationProgress=41..50}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=51..60}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=51..60}] AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=81}] AnimationRotationX -800
scoreboard players set @s[scores={AnimationProgress=81}] AnimationRotationZ 100
scoreboard players set @s[scores={AnimationProgress=81},tag=flipped_gravity] AnimationRotationZ -1700
scoreboard players set @s[scores={AnimationProgress=160}] AnimationProgress 80
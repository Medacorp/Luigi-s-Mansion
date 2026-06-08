scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1800
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 50
scoreboard players set @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ -1750
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=4..6}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=7..9}] run scoreboard players add @s AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=15}] AnimationRotationX -1800
scoreboard players set @s[scores={AnimationProgress=15}] AnimationRotationZ 50
scoreboard players set @s[scores={AnimationProgress=15},tag=flipped_gravity] AnimationRotationZ -1750
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 0
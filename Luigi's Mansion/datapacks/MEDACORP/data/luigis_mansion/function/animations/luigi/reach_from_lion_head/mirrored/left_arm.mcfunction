scoreboard players add @s AnimationProgress 1
data remove entity @s[scores={AnimationProgress=1..},tag=held_item] item
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -800
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -100
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
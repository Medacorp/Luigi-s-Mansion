scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=21}] AnimationRotationX -1500
scoreboard players set @s[scores={AnimationProgress=21}] AnimationRotationY -100
execute at @s rotated ~ 0 run teleport @s[scores={AnimationProgress=17..},tag=!flipped_gravity,tag=!shrunk] ^ ^-0.2 ^-0.2
execute at @s rotated ~ 0 run teleport @s[scores={AnimationProgress=17..},tag=!flipped_gravity,tag=shrunk] ^ ^-0.1 ^-0.1
execute at @s rotated ~ 0 run teleport @s[scores={AnimationProgress=17..},tag=flipped_gravity,tag=!shrunk] ^ ^0.2 ^-0.2
execute at @s rotated ~ 0 run teleport @s[scores={AnimationProgress=17..},tag=flipped_gravity,tag=shrunk] ^ ^0.1 ^-0.1
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=11..16}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players add @s AnimationRotationY 140
execute if entity @s[scores={AnimationProgress=15..19}] run scoreboard players remove @s AnimationRotationY 160
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 20
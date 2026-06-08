scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=61}] rotated ~ 0 run teleport @s ^ ^-0.05 ^
execute at @s[scores={AnimationProgress=62}] rotated ~ 0 run teleport @s ^ ^-0.1 ^
execute at @s[scores={AnimationProgress=63}] rotated ~ 0 run teleport @s ^ ^-0.15 ^
execute at @s[scores={AnimationProgress=64}] rotated ~ 0 run teleport @s ^ ^-0.2 ^
execute at @s[scores={AnimationProgress=65}] rotated ~ 0 run teleport @s ^ ^-0.25 ^
execute at @s[scores={AnimationProgress=66}] rotated ~ 0 run teleport @s ^ ^-0.3 ^
execute at @s[scores={AnimationProgress=67}] rotated ~ 0 run teleport @s ^ ^-0.35 ^
execute at @s[scores={AnimationProgress=68}] rotated ~ 0 run teleport @s ^ ^-0.4 ^
execute at @s[scores={AnimationProgress=69}] rotated ~ 0 run teleport @s ^ ^-0.45 ^
execute at @s[scores={AnimationProgress=70}] rotated ~ 0 run teleport @s ^ ^-0.5 ^
execute at @s[scores={AnimationProgress=71}] rotated ~ 0 run teleport @s ^ ^-0.55 ^
execute at @s[scores={AnimationProgress=72}] rotated ~ 0 run teleport @s ^ ^-0.6 ^
execute at @s[scores={AnimationProgress=73}] rotated ~ 0 run teleport @s ^ ^-0.65 ^
execute at @s[scores={AnimationProgress=74}] rotated ~ 0 run teleport @s ^ ^-0.7 ^
execute at @s[scores={AnimationProgress=75}] rotated ~ 0 run teleport @s ^ ^-0.75 ^
execute at @s[scores={AnimationProgress=76}] rotated ~ 0 run teleport @s ^ ^-0.8 ^
execute at @s[scores={AnimationProgress=77}] rotated ~ 0 run teleport @s ^ ^-0.85 ^
execute at @s[scores={AnimationProgress=78}] rotated ~ 0 run teleport @s ^ ^-0.9 ^
execute at @s[scores={AnimationProgress=79}] rotated ~ 0 run teleport @s ^ ^-0.95 ^
execute at @s[scores={AnimationProgress=80}] rotated ~ 0 run teleport @s ^ ^-1 ^
execute at @s[scores={AnimationProgress=81}] rotated ~ 0 run teleport @s ^ ^-1.05 ^
execute at @s[scores={AnimationProgress=82}] rotated ~ 0 run teleport @s ^ ^-1.1 ^
execute at @s[scores={AnimationProgress=83}] rotated ~ 0 run teleport @s ^ ^-1.15 ^
execute at @s[scores={AnimationProgress=84}] rotated ~ 0 run teleport @s ^ ^-1.2 ^
execute at @s[scores={AnimationProgress=85}] rotated ~ 0 run teleport @s ^ ^-1.25 ^
execute at @s[scores={AnimationProgress=86..110}] rotated ~ 0 run teleport @s ^ ^-1.3 ^
execute at @s[scores={AnimationProgress=111}] rotated ~ 0 run teleport @s ^ ^-1.17 ^
execute at @s[scores={AnimationProgress=112}] rotated ~ 0 run teleport @s ^ ^-1.04 ^
execute at @s[scores={AnimationProgress=113}] rotated ~ 0 run teleport @s ^ ^-0.91 ^
execute at @s[scores={AnimationProgress=114}] rotated ~ 0 run teleport @s ^ ^-0.78 ^
execute at @s[scores={AnimationProgress=115}] rotated ~ 0 run teleport @s ^ ^-0.65 ^
execute at @s[scores={AnimationProgress=116}] rotated ~ 0 run teleport @s ^ ^-0.52 ^
execute at @s[scores={AnimationProgress=117}] rotated ~ 0 run teleport @s ^ ^-0.39 ^
execute at @s[scores={AnimationProgress=118}] rotated ~ 0 run teleport @s ^ ^-0.26 ^
execute at @s[scores={AnimationProgress=119}] rotated ~ 0 run teleport @s ^ ^-0.13 ^
data modify entity @s[scores={AnimationProgress=15..109}] equipment.head.id set value "minecraft:stone_button"
execute if entity @s[scores={AnimationProgress=63..92}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=111..120}] run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=91..92}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=93..96}] run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=97..100}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=101..102}] run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=103..106}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=107..110}] run scoreboard players remove @s AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=140..}] AnimationProgress 0
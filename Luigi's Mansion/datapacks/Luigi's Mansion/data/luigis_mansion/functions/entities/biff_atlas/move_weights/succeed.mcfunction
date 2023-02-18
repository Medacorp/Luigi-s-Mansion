execute if entity @s[scores={AnimationProgress=21}] at @e[tag=these_weights,limit=1] run fill ^-1 ^1.17 ^ ^1 ^1.17 ^ minecraft:air
execute if entity @s[scores={AnimationProgress=21..40}] as @e[tag=these_weights,limit=1] at @s run teleport @s ^ ^0.04 ^
execute if entity @s[scores={AnimationProgress=41..50}] as @e[tag=these_weights,limit=1] at @s run teleport @s ^ ^0.06 ^
execute if entity @s[scores={AnimationProgress=46..55}] as @e[tag=these_weights,limit=1] at @s run teleport @s ^ ^0.04 ^-0.02
execute if entity @s[scores={AnimationProgress=66..75}] as @e[tag=these_weights,limit=1] at @s run teleport @s ^ ^0.01 ^-0.01
execute if entity @s[scores={AnimationProgress=76..85}] as @e[tag=these_weights,limit=1] at @s run teleport @s ^ ^-0.01 ^0.01
execute if entity @s[scores={AnimationProgress=86..95}] as @e[tag=these_weights,limit=1] at @s run teleport @s ^ ^0.01 ^-0.01
execute if entity @s[scores={AnimationProgress=96..105}] as @e[tag=these_weights,limit=1] at @s run teleport @s ^ ^-0.01 ^0.01
execute if entity @s[scores={AnimationProgress=106..115}] as @e[tag=these_weights,limit=1] at @s run teleport @s ^ ^0.01 ^-0.01
execute if entity @s[scores={AnimationProgress=116..125}] as @e[tag=these_weights,limit=1] at @s run teleport @s ^ ^-0.01 ^0.01
execute if entity @s[scores={AnimationProgress=126..135}] as @e[tag=these_weights,limit=1] at @s run teleport @s ^ ^-0.04 ^0.02
execute if entity @s[scores={AnimationProgress=136..139}] as @e[tag=these_weights,limit=1] at @s run teleport @s ^ ^-0.28 ^
execute if entity @s[scores={AnimationProgress=140}] as @e[tag=these_weights,limit=1] run function luigis_mansion:entities/biff_atlas/move_weights/home

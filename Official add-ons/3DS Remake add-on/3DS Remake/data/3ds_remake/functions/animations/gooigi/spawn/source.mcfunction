scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:animations/gooigi/source
execute if entity @s[scores={AnimationProgress=1}] rotated as @s run teleport @s[tag=!flipped_gravity] ^ ^-0.35 ^
execute if entity @s[scores={AnimationProgress=1}] rotated as @s run teleport @s[tag=flipped_gravity] ^ ^1.4 ^
execute at @s[scores={AnimationProgress=1}] if entity @a[tag=gooigi,limit=1] run teleport @s ^ ^ ^-.25
execute at @s[scores={AnimationProgress=1..20},tag=!flipped_gravity] run teleport @s ~ ~0.1 ~ ~ ~
execute at @s[scores={AnimationProgress=1..20},tag=flipped_gravity] run teleport @s ~ ~-0.1 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0